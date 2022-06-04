using UnityEngine;
using UnityEngine.UI;
using static ShootingGame.Scripts.GameManager;

namespace ShootingGame.Scripts
{
    public class InGameLoading : MonoBehaviour
    {
        [SerializeField] private Animator animator;
        [SerializeField] private float disableAfter = 1f;
        [SerializeField] private Image image;
    
        private static readonly int AnimationId = Animator.StringToHash("AnimationId");

        private int _currentId;


        private void OnEnable()
        {
            GManager.EventSystem.OnInGameLoadingIn += In;
            GManager.EventSystem.OnInGameLoadingOut += Out;
        }

        private void OnDisable()
        {
            GManager.EventSystem.OnInGameLoadingIn -= In;
            GManager.EventSystem.OnInGameLoadingOut -= Out;
        }

        private void InIt()
        {
            image ??= GetComponent<Image>();
            image ??= GetComponentInChildren<Image>();
        }

        public float Delay => disableAfter;

        private void In()
        {
            InIt();
            image.enabled = true;
            _currentId = 1;
            animator.SetInteger(AnimationId,_currentId);
            Invoke(nameof(DisableMe),disableAfter);
        }

        private void Out()
        {
            InIt();
            image.enabled = true;
            _currentId = 2;
            animator.SetInteger(AnimationId,_currentId);
            Invoke(nameof(DisableMe),disableAfter);
        }

    

        private void DisableMe()
        {
            image.enabled = false;
            animator.SetInteger(AnimationId,_currentId);
        }
    
    }
}
