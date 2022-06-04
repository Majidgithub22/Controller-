using System.Collections;
using Sirenix.OdinInspector;
using UnityEngine;
using static ShootingGame.Scripts.GameManager;

//using HomaGames.HomaBelly;

namespace ShootingGame.Scripts
{
    public class LevelManager : MonoBehaviour
    {
        [SerializeField] private string levelsPath = "Levels/";

        private LevelSo[] _levels;
       private LevelSo _lastLoadedLevelData;

        private Camera _camera;
        

        // Helpers
        public LevelSo LastLoadedLevelData => _lastLoadedLevelData;
        
        // Start is called before the first frame update
        private void Awake()
        {
            _levels = Resources.LoadAll<LevelSo>(levelsPath);
           
        }

        private void Start()
        {
            _camera = Camera.main;
            
        }

        private void OnEnable()
        {
            GManager.EventSystem.OnLoadLevelEnvironment += LoadLevelEnvironment;
            GManager.EventSystem.OnLevelLoad += LoadLevel;
        }

        private void OnDisable()
        {
            GManager.EventSystem.OnLoadLevelEnvironment -= LoadLevelEnvironment;
            GManager.EventSystem.OnLevelLoad -= LoadLevel;
        }

        private void LoadLevel(int levelId)
        {
            StartCoroutine(LoadLevelRoutine(levelId));
        }

      

        [Button]
        private void LoadLevelEnvironment(int levelId)
        {
           // if(_lastLoadedLevel != null) return;
            StartCoroutine(LoadEnvironmentRoutine(levelId));
        }
        
        

        private IEnumerator LoadEnvironmentRoutine(int levelId)
        {
            var lvlIndex = FindLevelIndexById(levelId);

            if (lvlIndex.HasValue)
            {
                var lvl = _levels[lvlIndex.Value];
                var eId = GManager.GameSettings.LoadLevelBasedEnvironment ? lvl.environmentId : EnvironmentId;
                var isLoaded = false;
                GManager.EventSystem.LoadEnvironment(eId, returnVal =>
                {
                    isLoaded = returnVal;
                });
                yield return new WaitUntil(() => isLoaded);
                // yield return new WaitUntil(() => GManager.Loading.LoadingComplete);
               // GManager.UIManager.DisableLoadingPanel();
            }
        }

    
        

        private IEnumerator LoadLevelRoutine(int levelId)
        {
            if (!GManager.FirstRun)
            {
                GManager.FirstRun = true;
                GManager.EventSystem.EnableLoadingPanel();
            }
            else
            {
                GManager.EventSystem.InGameLoadingOut();
            }
            
            
            GManager.EventSystem.ResetInLevelCash();
           

            var ind = FindLevelIndexById(levelId);
            if (ind.HasValue)
            {
                var currentLevel = _levels[ind.Value];

                // Environment Loading **************************************************
                var eId = GManager.GameSettings.LoadLevelBasedEnvironment ? currentLevel.environmentId : EnvironmentId;
                var isLoaded = false;
                GManager.EventSystem.LoadEnvironment(
                    eId, returnVal => { isLoaded = returnVal; });
                yield return new WaitUntil(() => isLoaded);
                // ####################################################################################################
                
                
                 _lastLoadedLevelData = currentLevel;

                 
                 
                 // Icons Loading Stuff **************************************************
                 Sprite cIcon = null;
                 GManager.EventSystem.GetEnvironmentIcon(eId, returnVal =>
                 {
                      cIcon = returnVal;
                 });

                 
                 Sprite nIcon = null;
                 GManager.EventSystem.GetEnvironmentIcon(NextEnvironmentId, returnVal =>
                 {
                     nIcon = returnVal;
                 });
                 
                 GManager.EventSystem.SetCurrentEnvironmentIcon(cIcon);
                 GManager.EventSystem.SetNextEnvironmentIcon(nIcon);
                 // ####################################################################################################
                
                
               
                
                while (!Loading.LoadingComplete)
                {
                    yield return null;
                }
                GManager.EventSystem.DisableLoadingPanel();
               
                
                GManager.EventSystem.UpdateLevelInfo(currentLevel.id);

                _camera.backgroundColor = currentLevel.skyBoxColor;
                RenderSettings.fogColor = currentLevel.fogColor;
                

                
                // Tutorials **************************************************
                if (GameManager.Tutorial == 0)
                {
                   
                }
                else if (GameManager.Tutorial == 1)
                {
                 
                }
                else if (GameManager.Tutorial == 2)
                {
                    
                }
                else
                {
                    
                }
                // ####################################################################################################
                
                
             
                Debug.Log("Here");
                
            }
        }

        private int? FindLevelIndexById(int levelId)
        {
            for (var i = 0; i < _levels.Length; i++)
            {
                if (_levels[i].id == levelId)
                {
                    return i;
                }
            }

            return null;
        }
        
    }
}
