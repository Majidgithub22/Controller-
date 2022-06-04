using Sirenix.OdinInspector;
using UnityEngine;
using UnityEngine.UI;
using static ShootingGame.Scripts.GameManager;

namespace ShootingGame.Scripts
{
    public class UIManager : MonoBehaviour
    {
        [SerializeField] private GameObject mainPanel;
        [SerializeField] private GameObject levelCompletePanel;
        [SerializeField] private GameObject levelFailedPanel;
        [SerializeField] private GameObject loadingPanel;
        [SerializeField] private GameObject clickingHand;
        [SerializeField] private GameObject draggingHand;
        [SerializeField] private Image currentEnvironmentIcon;
        [SerializeField] private Image nextEnvironmentIcon;
        [SerializeField] private Image progressLevelImage;

        [SerializeField] private GameObject levelProgress;

        [SerializeField] private RectTransform agentTowerButtonPos, dinoTowerButtonPos, battleButtonPos;

        private RectTransform _rt;
        
        
        //Helpers
        

        public Image ProgressLevelImage
        {
            get => progressLevelImage;
            set => progressLevelImage = value;
        }

        private void Start()
        {
            if (clickingHand)
            {
                _rt = clickingHand.GetComponent<RectTransform>();
            }
        }


        private void OnEnable()
        {
            GManager.EventSystem.OnEnableMainMenuPanel += EnableMainPanel;
            GManager.EventSystem.OnDisableMainMenuPanel += DisableMainPanel;
           
            GManager.EventSystem.OnEnableLevelCompletePanel += EnableLevelCompletePanel;
            GManager.EventSystem.OnDisableLevelCompletePanel += DisableLevelCompletePanel;
           
            GManager.EventSystem.OnEnableLevelFailedPanel += EnableLevelFailedPanel;
            GManager.EventSystem.OnDisableLevelFailedPanel += DisableLevelFailedPanel;

            GManager.EventSystem.OnEnableLoadingPanel += EnableLoadingPanel;
            GManager.EventSystem.OnDisableLoadingPanel += DisableLoadingPanel;


            GManager.EventSystem.OnSetCurrentEnvironmentIcon += SetCurrentEnvironmentIcon;
            GManager.EventSystem.OnSetNextEnvironmentIcon += SetNextEnvironmentIcon;
        }
        

        private void OnDisable()
        {
            GManager.EventSystem.OnEnableMainMenuPanel -= EnableMainPanel;
            GManager.EventSystem.OnDisableMainMenuPanel -= DisableMainPanel;
           
            GManager.EventSystem.OnEnableLevelCompletePanel -= EnableLevelCompletePanel;
            GManager.EventSystem.OnDisableLevelCompletePanel -= DisableLevelCompletePanel;
           
            GManager.EventSystem.OnEnableLevelFailedPanel -= EnableLevelFailedPanel;
            GManager.EventSystem.OnDisableLevelFailedPanel -= DisableLevelFailedPanel;

            GManager.EventSystem.OnEnableLoadingPanel -= EnableLoadingPanel;
            GManager.EventSystem.OnDisableLoadingPanel -= DisableLoadingPanel;


            GManager.EventSystem.OnSetCurrentEnvironmentIcon -= SetCurrentEnvironmentIcon;
            GManager.EventSystem.OnSetNextEnvironmentIcon -= SetNextEnvironmentIcon;
        }



        private void SetCurrentEnvironmentIcon(Sprite s)
        {
            if(currentEnvironmentIcon == null) return;
            currentEnvironmentIcon.sprite = s;
        }

        private void SetNextEnvironmentIcon(Sprite s)
        {
            if(currentEnvironmentIcon == null) return;
            nextEnvironmentIcon.sprite = s;
        }
       


        private void ClickingHandToBattleButton()
        {
            _rt.anchoredPosition = battleButtonPos.anchoredPosition;
        }

        private void ClickingHandToAgentTowerButton()
        {
            _rt.anchoredPosition = agentTowerButtonPos.anchoredPosition;
        }
        
        private void ClickingHandToDinoTowerButton()
        {
            _rt.anchoredPosition = dinoTowerButtonPos.anchoredPosition;
        }


       
        private void EnableClickingHand()
        {
            clickingHand.SetActive(true);
        }

        private void DisableClickingHand()
        {
            clickingHand.SetActive(false);
        }


        private void EnableDraggingHand()
        {
            draggingHand.SetActive(true);
        }

        private void DisableDraggingHand()
        {
            draggingHand.SetActive(false);
        }


      


        [Button, FoldoutGroup("Testing")]
        public void EnableMainPanel()
        {
            mainPanel.SetActive(true);
        }
        [Button, FoldoutGroup("Testing")]
        public void DisableMainPanel()
        {
            mainPanel.SetActive(false);
        }
    
        [Button, FoldoutGroup("Testing")]
        public void EnableLevelCompletePanel()
        {
            levelCompletePanel.SetActive(true);
        }
        [Button, FoldoutGroup("Testing")]
        public void DisableLevelCompletePanel()
        {
            levelCompletePanel.SetActive(false);
        }
    


        public void EnableLoadingPanel()
        {
            loadingPanel.SetActive(true);
        }
        public void DisableLoadingPanel()
        {
            loadingPanel.SetActive(false);
        }
    
    
       

        [Button, FoldoutGroup("Testing")]
        public void DisableAllPanels()
        {
            DisableMainPanel();
            DisableLevelCompletePanel();
            DisableLevelFailedPanel();
            DisableLoadingPanel();
        }


        public void EnableLevelFailedPanel()
        {
            levelFailedPanel.SetActive(true);
        }

        public void DisableLevelFailedPanel()
        {
            levelFailedPanel.SetActive(false);
        }


  
        /*private Sprite CurrentEnvironmentIcon()
        {
            return currentEnvironmentIcon;
        }

        private Sprite NextEnvironmentIcon()
        {
            return nextEnvironmentIcon;
        }*/

        private void EnableLevelProgress()
        {
            levelProgress.SetActive(true);
        }

        private void DisableLevelProgress()
        {
            levelProgress.SetActive(false);
        }
    }
}
