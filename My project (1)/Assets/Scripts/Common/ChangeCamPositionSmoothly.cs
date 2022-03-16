using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChangeCamPositionSmoothly : MonoBehaviour {
    public GameObject target;
    public Transform startPos;

   
    void Update() {
        Vector3 pos = Vector3.Lerp(transform.position, target.transform.position, 2 * Time.deltaTime);
        transform.position = pos;
    }
    public void ResetCamPosition() {
        transform.position = startPos.position;
    }
}
   

