using Sirenix.OdinInspector;
using UnityEngine;

namespace ShootingGame.Scripts
{
    [CreateAssetMenu(fileName = "Level", menuName = "ShootingGame/LevelData")]
    public class LevelSo : ScriptableObject
    {

        [InlineButton(nameof(ResetData), "Reset Data")]
        
    
        public int id = 1;
        // public GameObject prefab;
        public int environmentId = 1;
        public Color skyBoxColor;
        public Color fogColor;

       
        
        private void ResetData()
        {
            
        }


        [Button]
        private void UpdateHelpers()
        {
          
        }
    
    }
}
