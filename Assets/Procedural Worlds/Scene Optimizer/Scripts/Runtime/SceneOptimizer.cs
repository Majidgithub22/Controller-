using System.IO;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
using UnityEditor.SceneManagement;
#endif
#if GAIA_PRO_PRESENT
using Gaia;
#endif
namespace ProceduralWorlds.SceneOptimizer
{
    [CreateAssetMenu(fileName = "Scene Optimizer", menuName = "Procedural Worlds/Scene Optimizer")]
    public class SceneOptimizer : SceneOptimizerInternal
    {
        public const string FPS_TESTER_ROOT_NAME = "Scene Optimizer - FPS Tester";
#if GAIA_PRO_PRESENT
        public override bool IsGaiaTerrainLoadedScene() => GaiaUtils.HasDynamicLoadedTerrains();
#endif
        public override void ProcessSceneOptimization(OptimizeCall optimizeCall, bool useGaia, bool recordUndo)
        {
            if (!Tools.ChildUnderRoots)
            {
                optimizeCall.optimizedParent = new GameObject("Optimized");
            }
            if (useGaia)
            {
#if GAIA_PRO_PRESENT
                System.Action<Terrain> act = (t) =>
                {
                    GameObject gameObject = t.gameObject;
                    GameObjectEntry entry = new GameObjectEntry
                    {
                        Enabled = true,
                        DisableChildren = true,
                        GameObject = gameObject
                    };
                    optimizeCall.rootObjects.Add(entry);
                    RevertOptimization(gameObject.scene);
                    optimizeCall.optimizedRoots = ProcessSceneOptimization(optimizeCall, recordUndo);
                    PostProcessSceneOptimization(optimizeCall, recordUndo);
                    optimizeCall.rootObjects.Remove(entry);
                };
                GaiaUtils.CallFunctionOnDynamicLoadedTerrains(act, true);
#endif
            }
            else
            {
                RevertOptimization();
                optimizeCall.optimizedRoots = ProcessSceneOptimization(optimizeCall, recordUndo);
                PostProcessSceneOptimization(optimizeCall, recordUndo);
            }
        }
        public List<Scene> GetUniqueScenes(List<GameObject> gameObjects)
        {
            List<Scene> scenes = new List<Scene>();
            foreach (GameObject gameObject in gameObjects)
            {
                if (gameObject == null)
                    continue;
                Scene scene = gameObject.scene;
                if (scenes.Contains(scene))
                    continue;
                scenes.Add(scene);
            }
            return scenes;
        }
        public void PostProcessSceneOptimization(OptimizeCall optimizeCall, bool recordUndo = true)
        {
            List<GameObject> optimizedRoots = optimizeCall.optimizedRoots;
#if UNITY_EDITOR
            if (optimizedRoots.Count > 0)
            {
                if (recordUndo)
                {
                    foreach (GameObject optimizedRoot in optimizedRoots)
                    {
                        Undo.RegisterCreatedObjectUndo(optimizedRoot, "Optimized");
                    }
                }
                List<Scene> uniqueScenes = GetUniqueScenes(optimizedRoots);
                foreach (Scene scene in uniqueScenes)
                {
                    // Mark this Scene as Dirty
                    EditorSceneManager.MarkSceneDirty(scene);
                }
                if (Tools.SaveToDisk)
                {
                    try
                    {
                        AssetDatabase.StartAssetEditing();
                        Dictionary<Scene, string> sceneFullPaths = new Dictionary<Scene, string>();
                        foreach (Scene scene in uniqueScenes)
                        {
                            string scenePath = Path.GetDirectoryName(scene.path);
                            string folderName = $"{scene.name}_OptimizedObjects";
                            string fullPath = $"{scenePath}/{folderName}";
                            if (Directory.Exists(fullPath))
                                FileUtil.DeleteFileOrDirectory($"{fullPath}");
                        }
                        foreach (GameObject rootObject in optimizedRoots)
                        {
                            if (rootObject == null)
                                continue;
                            Scene scene = rootObject.scene;
                            MeshFilter[] meshFilters = rootObject.GetComponentsInChildren<MeshFilter>();
                            MeshCollider[] meshColliders = rootObject.GetComponentsInChildren<MeshCollider>();
                            foreach (MeshFilter meshFilter in meshFilters)
                                meshFilter.sharedMesh = PWEvents.SaveMeshToDisk(scene, meshFilter.sharedMesh);
                            foreach (MeshCollider meshCollider in meshColliders)
                                meshCollider.sharedMesh = PWEvents.SaveMeshToDisk(scene, meshCollider.sharedMesh);
                        }
                    }
                    finally
                    {
                        AssetDatabase.StopAssetEditing();
                        AssetDatabase.SaveAssets();
                    }
                }
                else
                {
                    foreach (GameObject rootObject in optimizedRoots)
                    {
                        if (rootObject == null)
                            continue;
                        MeshFilter[] meshFilters = rootObject.GetComponentsInChildren<MeshFilter>();
                        MeshCollider[] meshColliders = rootObject.GetComponentsInChildren<MeshCollider>();
                        foreach (MeshFilter meshFilter in meshFilters)
                        {
                            Mesh sharedMesh = meshFilter.sharedMesh;
                            if (sharedMesh == null)
                                continue;
                            string filePath = sharedMesh.name;
                            sharedMesh.name = Path.GetFileNameWithoutExtension(filePath);
                        }
                        foreach (MeshCollider meshCollider in meshColliders)
                        {
                            Mesh sharedMesh = meshCollider.sharedMesh;
                            if (sharedMesh == null)
                                continue;
                            string filePath = sharedMesh.name;
                            sharedMesh.name = Path.GetFileNameWithoutExtension(filePath);
                        }
                    }
                }
                if (Tools.DebugPerformance)
                {
                    GameObject fpsTesterPrefab = Tools.FpsTesterPrefab;
                    if (fpsTesterPrefab != null)
                    {
                        GameObject fpsTest = GameObject.Find(FPS_TESTER_ROOT_NAME);
                        if (fpsTest != null)
                            PWEvents.Destroy(fpsTest);
                        fpsTest = new GameObject(FPS_TESTER_ROOT_NAME);
                        if (recordUndo)
                            Undo.RegisterCreatedObjectUndo(fpsTest, "FPS Tester");
                        // Check if an instance already exists
                        FPSTester fpsTesterInstance = FindObjectOfType<FPSTester>();
                        if (fpsTesterInstance == null)
                        {
                            // Create Instance of FPS Tester
                            GameObject instance = PrefabUtility.InstantiatePrefab(fpsTesterPrefab) as GameObject;
                            instance.transform.SetParent(fpsTest.transform);
                        }
                    }
                    else
                    {
                        PWDebug.LogWarning("FPS Tester Prefab is Missing!");
                    }
                }

                // Parent Remaining to Optimized
                GameObject optimizedParent = optimizeCall.optimizedParent;
                GameObject remainingParent = optimizeCall.remainingParent;
                if (optimizedParent != null && remainingParent != null)
                    remainingParent.transform.SetParent(optimizedParent.transform);

                // Selection.objects = optimizedRoots.ToArray();
                AssetDatabase.SaveAssets();
                // m_canRevert = true;
            }
#endif
        }
        public override void AddOriginal(GameObject gameObject, bool recordUndo = false)
        {
            Original original = gameObject.GetComponent<Original>();
            if (original != null)
                return;
#if UNITY_EDITOR
            if (recordUndo)
                Undo.AddComponent<Original>(gameObject);
            else
                gameObject.AddComponent<Original>();
#else
            gameObject.AddComponent<Original>();
#endif
        }
        public override void AddOptimized(GameObject gameObject, bool recordUndo = false)
        {
            Optimized optimized = gameObject.GetComponent<Optimized>();
            if (optimized != null)
                return;
#if UNITY_EDITOR
            if (recordUndo)
                Undo.AddComponent<Optimized>(gameObject);
            else
                gameObject.AddComponent<Optimized>();
#else
            gameObject.AddComponent<Optimized>();
#endif
        }
        public override CullingSystemInternal GetCullingSystem()
        {
            CullingSystem cullingSystem = FindObjectOfType<CullingSystem>();
            if (cullingSystem == null)
            {
                Camera mainCamera = Camera.main;
                if (mainCamera != null)
                {
                    GameObject cameraObject = mainCamera.gameObject;
                    cullingSystem = cameraObject.GetComponent<CullingSystem>();
                    if (cullingSystem == null)
                    {
                        cullingSystem = cameraObject.AddComponent<CullingSystem>();
                    }
                }
            }
            return cullingSystem;
        }
        public static void RevertOptimization()
        {
            Original[] existingPWOriginals = FindObjectsOfType<Original>(true);
            foreach (Original existing in existingPWOriginals)
            {
                GameObject gameObject = existing.gameObject;
                if (gameObject == null)
                    continue;
                gameObject.SetActive(true);
                PWEvents.Destroy(existing);
            }
            Optimized[] existingPWOptimizeds = FindObjectsOfType<Optimized>(true);
            foreach (Optimized existing in existingPWOptimizeds)
            {
                GameObject gameObject = existing.gameObject;
                if (gameObject == null)
                    continue;
                PWEvents.Destroy(gameObject);
            }
        }
        /// <summary>
        /// Reverts the last Optimization
        /// Note: This operation destroys Optimized GameObjects and cannot be undone!
        /// </summary>
        public static void RevertOptimization(Scene scene)
        {
            Original[] existingPWOriginals = FindObjectsOfType<Original>(true);
            foreach (Original existing in existingPWOriginals)
            {
                GameObject gameObject = existing.gameObject;
                if (gameObject == null || gameObject.scene != scene)
                    continue;
                gameObject.SetActive(true);
                PWEvents.Destroy(existing);
            }
            Optimized[] existingPWOptimizeds = FindObjectsOfType<Optimized>(true);
            foreach (Optimized existing in existingPWOptimizeds)
            {
                GameObject gameObject = existing.gameObject;
                if (gameObject == null || gameObject.scene != scene)
                    continue;
                PWEvents.Destroy(gameObject);
            }
        }
        public static void Cleanup()
        {
            Original[] existingPWOriginals = FindObjectsOfType<Original>(true);
            foreach (Original existing in existingPWOriginals)
            {
                PWEvents.Destroy(existing);
            }
            Optimized[] existingPWOptimizeds = FindObjectsOfType<Optimized>(true);
            foreach (Optimized existing in existingPWOptimizeds)
            {
                PWEvents.Destroy(existing);
            }
        }
    }
}