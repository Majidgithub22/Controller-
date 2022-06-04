using System;
using System.Collections;
using JetBrains.Annotations;
using UnityEngine;
using UnityEngine.SceneManagement;
using static ShootingGame.Scripts.GameManager;

namespace ShootingGame.Scripts
{
    public class EnvironmentManager : MonoBehaviour
    {
        public EnvironmentStr[] environments;

        private int _lastLoadedEnvironmentId;
        private EnvironmentStr _currentEnvironment;

        private string _gamePlaySceneName;


        private void Awake()
        {
            _gamePlaySceneName = SceneManager.GetActiveScene().name;
        }

        private void OnEnable()
        {
            GManager.EventSystem.OnEnvironmentLoad += LoadEnvironment;
            GManager.EventSystem.OnGetEnvironmentIcon += GetEnvironmentIcon;
        }

        private void OnDisable()
        {
            GManager.EventSystem.OnEnvironmentLoad -= LoadEnvironment;
            GManager.EventSystem.OnGetEnvironmentIcon -= GetEnvironmentIcon;
        }

        private void LoadEnvironment(int environmentId, Action<bool> callback = null)
        {
            StartCoroutine(LoadEnvironmentRoutine(environmentId, returnVal =>
            {
                callback?.Invoke(returnVal);
            }));
        }


        private IEnumerator LoadEnvironmentRoutine(int environmentId, Action<bool> callback = null)
        {
            if (_lastLoadedEnvironmentId > 0)
            {
                if (_lastLoadedEnvironmentId == environmentId)
                {
                    callback?.Invoke(true);
                    yield break;
                }
            }
            
            _lastLoadedEnvironmentId = environmentId;
            var index = FindIndexById(environmentId);
            _currentEnvironment = environments[index.Value];
            Debug.Log(index);
            yield return StartCoroutine(UnloadAll());
            yield return StartCoroutine(LoadScene(_currentEnvironment.sceneName));
            callback?.Invoke(true);
            
            if (GManager.LogsEnabled)
            {
                Debug.Log("Scene Loaded");
            }
        }

        private string GetEnvironmentNameById(int environmentId)
        {
            var index = FindIndexById(environmentId);
            return index.HasValue ? environments[index.Value].sceneName : null;
        }


        private IEnumerator LoadScene(string sceneName)
        {
            var ao = SceneManager.LoadSceneAsync(sceneName, LoadSceneMode.Additive);
            while (!ao.isDone)
            {
                yield return null;
            }
       
        }


        private void GetEnvironmentIcon(int eId, Action<Sprite> callback)
        {
            var icon = GetEnvironmentIcon(eId);
            callback?.Invoke(icon);
        }


        [CanBeNull]
        private Sprite GetEnvironmentIcon(int eId)
        {
            Sprite icon = null;
            var index = FindIndexById(eId);
            if (index.HasValue)
            {
                icon = environments[index.Value].icon;
            }
        
            return icon;
        }
        

        private  IEnumerator UnloadAll()
        {
            var sceneCount = SceneManager.sceneCount;
            for (var i = 0; i < sceneCount; i++)
            {
                var scene = SceneManager.GetSceneAt(i);
                if (scene.name == _gamePlaySceneName)
                {
                    // :D
                }
                else
                {
                    var ao = SceneManager.UnloadSceneAsync(scene,UnloadSceneOptions.UnloadAllEmbeddedSceneObjects);
                }
            }

            yield return null;
        }
    

        private int? FindIndexById(int environmentId)
        {
            for(var i = 0; i < environments.Length; i++)
            {
                var e = environments[i];
                if (e.id == environmentId)
                {
                    return i;
                }
            }

            return null;
        }
    

        [Serializable]
        public struct EnvironmentStr
        {
            public int id;
            public string sceneName;
            public Sprite icon;
        }
    }
}
