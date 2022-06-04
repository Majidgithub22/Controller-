using System;
using UnityEngine;

namespace ShootingGame.Scripts
{
   public class GameplayEvents : MonoBehaviour
   {
      public event Action OnStartShooting;

      public void StartShooting()
      {
         OnStartShooting?.Invoke();
      }

      public event Action OnStopShooting;

      public void StopShooting()
      {
         OnStopShooting?.Invoke();
      }


      // Drag Object Related**********************************************
      public event Action<Transform> OnChangeTargetedGun;

      public void ChangeTargetedGun(Transform t)
      {
         OnChangeTargetedGun?.Invoke(t);
      }

      public event Action<float> OnChangeLerpSpeed;

      public void ChangeLerpSpeed(float val)
      {
         OnChangeLerpSpeed?.Invoke(val);
      }

      public event Action<DragObject.ClampStr> OnChangeClampX;

      public void ChangeClampX(DragObject.ClampStr val)
      {
         OnChangeClampX?.Invoke(val);
      }
      // ###########################################################################
      
      
      

      public event Action<Delegate> OnGettingAvailableTowers;

      public void GetAvailableTowers(Delegate val)
      {
         OnGettingAvailableTowers?.Invoke(val);
      }
      // ###########################################################################

 
      
      
      
      // In Level Cash Related **********************************************

      public event Action<int> OnAddInLevelCash;

      public void AddInLevelCash(int val)
      {
         OnAddInLevelCash?.Invoke(val);
      }

      public event Action<int> OnRemoveInLevelCash;

      public void RemoveInLevelCash(int val)
      {
         OnRemoveInLevelCash?.Invoke(val);
      }

      public event Action<int> OnSetInLevelCash;

      public void SetInLevelCash(int val)
      {
         OnSetInLevelCash?.Invoke(val);
      }

      public event Action OnResetInLevelCash;

      public void ResetInLevelCash()
      {
         OnResetInLevelCash?.Invoke();
      }

      // ###########################################################################


      public event Action<int> OnLevelLoad;

      public void LoadLevel(int levelId)
      {
         OnLevelLoad?.Invoke(levelId);
      }


      public event Action<int> OnLoadLevelEnvironment;

      public void LoadLevelEnvironment(int val)
      {
         OnLoadLevelEnvironment?.Invoke(val);
      }

      public event Action<int, Action<bool>> OnEnvironmentLoad;

      public void LoadEnvironment(int eId, Action<bool> callback = null)
      {
         OnEnvironmentLoad?.Invoke(eId, callback);
      }


      public event Action<int, Action<Sprite>> OnGetEnvironmentIcon;

      public void GetEnvironmentIcon(int val, Action<Sprite> callBack)
      {
         OnGetEnvironmentIcon?.Invoke(val,callBack);
      }

      public event Action<int> OnUpdateLevelInfo; 
      public void UpdateLevelInfo(int val)
      {
         OnUpdateLevelInfo?.Invoke(val);
      }


      
      // In Game Loading **********************************************
      public event Action OnInGameLoadingIn;

      public void InGameLoadingIn()
      {
         OnInGameLoadingIn?.Invoke();
      }


      public event Action OnInGameLoadingOut;

      public void InGameLoadingOut()
      {
         OnInGameLoadingOut?.Invoke();
      }
      
      // ###########################################################################
      
      
      
      
      // UI Related Events **********************************************

      public event Action OnEnableMainMenuPanel;

      public void EnableMainMenu()
      {
         OnEnableMainMenuPanel?.Invoke();
      }

      public event Action OnDisableMainMenuPanel;

      public void DisableMainMenu()
      {
         OnDisableMainMenuPanel?.Invoke();
      }

      public event Action OnEnableLevelCompletePanel;

      public void EnableLevelCompletePanel()
      {
         OnEnableLevelCompletePanel?.Invoke();
      }

      public event Action OnDisableLevelCompletePanel;

      public void DisableLevelCompletePanel()
      {
         OnDisableLevelCompletePanel?.Invoke();
      }

      public event Action OnEnableLevelFailedPanel;

      public void EnableLevelFailedPanel()
      {
         OnEnableLevelFailedPanel?.Invoke();
      }

      public event Action OnDisableLevelFailedPanel;

      public void DisableLevelFailedPanel()
      {
         OnDisableLevelFailedPanel?.Invoke();
      }

      public event Action OnEnableLoadingPanel;

      public void EnableLoadingPanel()
      {
         OnEnableLoadingPanel?.Invoke();
      }

      public event Action OnDisableLoadingPanel;

      public void DisableLoadingPanel()
      {
         OnDisableLoadingPanel?.Invoke();
      }


      public event Action<Sprite> OnSetCurrentEnvironmentIcon;

      public void SetCurrentEnvironmentIcon(Sprite val)
      {
         OnSetCurrentEnvironmentIcon?.Invoke(val);
      }

      public event Action<Sprite> OnSetNextEnvironmentIcon;

      public void SetNextEnvironmentIcon(Sprite val)
      {
         OnSetNextEnvironmentIcon?.Invoke(val);
      }


      // ###########################################################################
   }
}
