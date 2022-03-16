using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckPoints : MonoBehaviour {
    public GameObject BlackOut;
    public static int chancesCount;
    private Vector3
        checkPointPosition;

    private Quaternion checkPointRotation;
    private bool isCollide;  
    private void Start() {
        chancesCount = 0;
        Debug.Log(chancesCount);
        checkPointPosition = transform.position;
        checkPointRotation = transform.rotation;
    }
    private void OnTriggerEnter(Collider other) {
        if (other.gameObject.CompareTag("CheckPoint")) {
            checkPointPosition = other.gameObject.transform.position;
            checkPointRotation = other.gameObject.transform.rotation;
        }
    }
    private void OnCollisionEnter(Collision other) {
        if (other.gameObject.CompareTag("Hurdle")&&!isCollide) {
            isCollide = true;
            Debug.Log("chancescount" + chancesCount);
            BlackOut.SetActive(true);
            chancesCount++;
            gameObject.transform.position = checkPointPosition;
            gameObject.transform.rotation =checkPointRotation;
            StartCoroutine(StartAgain());
            gameObject.GetComponent<Rigidbody>().isKinematic = true;
        }
    }
    IEnumerator StartAgain() {
        yield return new WaitForSeconds(1);
        BlackOut.SetActive(false);
        gameObject.GetComponent<Rigidbody>().isKinematic = false;
        isCollide = false;
    }
}
