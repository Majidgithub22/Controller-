using System.Collections;
using Sirenix.OdinInspector;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

namespace ShootingGame.Scripts
{
    public class Loading : MonoBehaviour
    {
        [SerializeField] private Image lightImg;
        [SerializeField] private float fillingSpeed = 5f;
        [SerializeField] private bool sceneSwitch;
        [SerializeField, ShowIf(nameof(sceneSwitch))] private float delayBeforeSwitching = 2f;
        [SerializeField, ShowIf(nameof(sceneSwitch))]
        private string sceneName; 
    
        public static bool LoadingComplete { get; private set; }

        private void Start()
        {
            if (sceneSwitch)
            {
                Invoke(nameof(SwitchScene),1f);
            }
        }

        private void OnEnable()
        {
            LoadingComplete = false;
            lightImg.fillAmount = 0f;
        }
    
        private void Update()
        {
            if(LoadingComplete) return;
            lightImg.fillAmount = Mathf.Lerp(lightImg.fillAmount, 1f, fillingSpeed * Time.deltaTime);
            if (lightImg.fillAmount >= 0.99f)
            {
                lightImg.fillAmount = 1f;
                LoadingComplete = true;
            }
        }


        private void SwitchScene()
        {
            StartCoroutine(SceneSwitchRoutine());
        }
        private IEnumerator SceneSwitchRoutine()
        {
            var async = SceneManager.LoadSceneAsync(sceneName);
            async.allowSceneActivation = false;
            while (async.progress < 0.9f)
            {
                yield return null;
            }

            while (!LoadingComplete)
            {
                yield return null;
            }

            yield return StartCoroutine(PerformTasksRoutine());
            yield return new WaitForSeconds(delayBeforeSwitching);
            async.allowSceneActivation = true;
        }


        private IEnumerator PerformTasksRoutine()
        {
            // Custom Tasks (If Any) :D
            yield return null;
        }
    }
}
