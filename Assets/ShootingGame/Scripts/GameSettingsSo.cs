using Sirenix.OdinInspector;
using UnityEngine;

namespace ShootingGame.Scripts
{
    [CreateAssetMenu(fileName = "Game Settings", menuName = "ShootingGame/GameSettings")]
    public class GameSettingsSo : ScriptableObject
    {
        private enum GameMode
        {
            Testing,
            Release
        }

        private enum Logs
        {
            Disabled,
            Enabled
        }
        
        [SerializeField] private int maxLevelId;
        [SerializeField] private int maxEnvironmentId;
        [SerializeField] private bool loadLevelBasedEnvironment;
        [SerializeField] private GameMode gameMode;

        [SerializeField, ShowIf(nameof(IsTestingMode))]
        private int testingLevelId;
        [SerializeField] private Logs logsMode;

        public int MaxLevelId => maxLevelId;
        public int MaxEnvironmentId => maxEnvironmentId;
        public bool LoadLevelBasedEnvironment => loadLevelBasedEnvironment;
        public int TestingLevelId => testingLevelId;
        
        
        public bool IsTestingMode => gameMode == GameMode.Testing;
        public bool LogsEnabled => logsMode == Logs.Enabled;
    }
}
