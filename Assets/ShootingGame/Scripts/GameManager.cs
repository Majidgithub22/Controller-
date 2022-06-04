using UnityEngine;

namespace ShootingGame.Scripts
{
    [DefaultExecutionOrder(-1)]
    public class GameManager : MonoBehaviour
    {
      
        
        
        public static GameManager GManager { get; private set;}
    
        [SerializeField] private GameplayEvents eventSystem;
       

        //Helpers
        public GameplayEvents EventSystem => eventSystem;
        
        public bool FirstRun { get; set; }
        public int InLevelCash { get; private set;}


        public GameSettingsSo GameSettings { get; private set; }


        public bool LogsEnabled => GameSettings.LogsEnabled;
        public bool LoadLevelBasedEnvironment => GameSettings.LoadLevelBasedEnvironment;


        private void Awake()
        {
            if (GManager != null) return;
            GManager = this;
            DontDestroyOnLoad(gameObject);
            GameSettings = Resources.Load<GameSettingsSo>("Game Settings/Game Settings");

            
        }

        private void Start()
        {
            if (GManager != null && GManager.GetInstanceID() != GetInstanceID())
            {
                Destroy(gameObject);
            }
            else
            {
                if (GameSettings.IsTestingMode)
                {
                    EventSystem.LoadLevel(GameSettings.TestingLevelId);
                }
            }
        }

        private void OnEnable()
        {
            EventSystem.OnSetInLevelCash += SetInLevelCash;
        }

        private void OnDisable()
        {
            EventSystem.OnSetInLevelCash -= SetInLevelCash;
        }

      

        
        
        private void SetInLevelCash(int cashToSet)
        {
            InLevelCash = cashToSet;
        }



        public static int EnvironmentId
        {
            get => PlayerPrefs.GetInt("CurrentEnvironment",1);
            set => PlayerPrefs.SetInt("CurrentEnvironment", value);

        }
        
        public static int NextEnvironmentId
        {
            get => PlayerPrefs.GetInt("NextEnvironment", 2);
            set => PlayerPrefs.SetInt("NextEnvironment", value);

        }
        
        public static int Tutorial
        {
            get => PlayerPrefs.GetInt("Tutorial");
            set => PlayerPrefs.SetInt("Tutorial", value);

        }


     
    }
}
