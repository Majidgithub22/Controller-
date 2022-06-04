using Sirenix.OdinInspector;
using UnityEngine;

namespace ShootingGame.Scripts
{
    public class ChangeBasemap : MonoBehaviour
    {
        [SerializeField] private Renderer[] renderers;
        [SerializeField] private Texture texture;

        private MaterialPropertyBlock _propertyBlock;
        private static readonly int BaseMap = Shader.PropertyToID("_BaseMap");
        private static readonly int EmissionMap = Shader.PropertyToID("_EmissionMap");

        // Start is called before the first frame update
        private void Start()
        {
            ChangeTexture();
        }

        private void InIt()
        {
            _propertyBlock ??= new MaterialPropertyBlock();
        }

        private void ChangeTexture()
        {
            InIt();
            _propertyBlock.SetTexture(BaseMap,texture);
            _propertyBlock.SetTexture(EmissionMap,texture);
            foreach (var r in renderers)
            {
                r.SetPropertyBlock(_propertyBlock);
            }
        }

        [Button]
        private void AssignRenderer()
        {
            renderers = GetComponentsInChildren<Renderer>();
        }
    }
}
