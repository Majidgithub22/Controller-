using System;
using UnityEngine;
using static ShootingGame.Scripts.GameManager;


namespace ShootingGame.Scripts
{
    public class DragObject : MonoBehaviour

    {

        private Transform _targetedGun;
        private ClampStr _xClamp = new ClampStr(-6f,6f);
        private float _lerpSpeed = 5f;
    
   
    
        private Camera _camera;
        private Vector3 _mOffset;
        private float _mZCoord;
        private Vector3 _targetPos;
        private bool _updateCanWork;


        private void OnEnable()
        {
            GManager.EventSystem.OnChangeTargetedGun += SetTargetedGun;
            GManager.EventSystem.OnChangeClampX += SetXClamp;
            GManager.EventSystem.OnChangeLerpSpeed += SetLerpSpeed;
        }

        private void OnDisable()
        {
            GManager.EventSystem.OnChangeTargetedGun -= SetTargetedGun;
            GManager.EventSystem.OnChangeClampX -= SetXClamp;
            GManager.EventSystem.OnChangeLerpSpeed -= SetLerpSpeed;
        }


        private void Start()
        {
            InIt();
        }


        private void InIt()
        {
            _camera ??= Camera.main;
            _targetPos = !_targetedGun ? Vector3.zero: _targetedGun.position;
        }


        private void Update()
        {
            if(!_updateCanWork) return;
            if(_targetedGun == null) return;
            var pos = _targetedGun.position;
            _targetedGun.position = Vector3.Lerp(pos, _targetPos, _lerpSpeed * Time.deltaTime);
        }


        private void OnMouseDown()
        {
            var objPos = _targetedGun.position;
            _mZCoord = _camera.WorldToScreenPoint(

                objPos).z;


            // Store offset = gameobject world pos - mouse world pos

            _mOffset = objPos - GetMouseAsWorldPoint();
        
            _targetPos = objPos;
            _updateCanWork = true;

            GManager.EventSystem.StartShooting();

        }

        private void OnMouseUp()
        {
            _updateCanWork = false;
            GManager.EventSystem.StopShooting();
        }


        private Vector3 GetMouseAsWorldPoint()

        {

            // Pixel coordinates of mouse (x,y)

            var mousePoint = Input.mousePosition;


            // z coordinate of game object on screen

            mousePoint.z = _mZCoord;


            // Convert it to world points

            return _camera.ScreenToWorldPoint(mousePoint);

        }


        private void OnMouseDrag()
        {
            var newPos = _targetedGun.position;
            newPos.x = (GetMouseAsWorldPoint() + _mOffset).x;

            newPos.x = Mathf.Clamp(newPos.x, _xClamp.min, _xClamp.max);
            _targetPos = newPos;
        }

        private void SetTargetedGun(Transform t)
        {
            _targetedGun = t;
        }

        private void SetXClamp(ClampStr clampVal)
        {
            _xClamp = clampVal;
        }

        private void SetLerpSpeed(float val)
        {
            _lerpSpeed = val;
        }


        [Serializable]
        public struct ClampStr
        {
            public float min, max;

            public ClampStr(float min, float max)
            {
                this.min = min;
                this.max = max;
            }
        }

    }
}