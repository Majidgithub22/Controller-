using UnityEngine;
using static ShootingGame.Scripts.GameManager;

namespace ShootingGame.Scripts
{
    public class InLevelCashManager : MonoBehaviour
    {
        private void OnEnable()
        {
            GManager.EventSystem.OnAddInLevelCash += AddInLevelCash;
            GManager.EventSystem.OnRemoveInLevelCash += RemoveInLevelCash;
            GManager.EventSystem.OnResetInLevelCash += ResetInLevelCash;
        }

        private void OnDisable()
        {
            GManager.EventSystem.OnAddInLevelCash -= AddInLevelCash;
            GManager.EventSystem.OnRemoveInLevelCash -= RemoveInLevelCash;
            GManager.EventSystem.OnResetInLevelCash -= ResetInLevelCash;
        }


        private void AddInLevelCash(int cashToAdd)
        {
            var currentAmount = GManager.InLevelCash;
            var newAmount = currentAmount + cashToAdd;
            GManager.EventSystem.SetInLevelCash(newAmount);
        }

        private void RemoveInLevelCash(int cashToRemove)
        {
            var currentAmount = GManager.InLevelCash;
            var newAmount = currentAmount - cashToRemove;
            if (newAmount < 0)
            {
                newAmount = 0;
            }
            GManager.EventSystem.SetInLevelCash(newAmount);
        }

        
        private void ResetInLevelCash()
        {
            GManager.EventSystem.SetInLevelCash(0);
        }
    }
}
