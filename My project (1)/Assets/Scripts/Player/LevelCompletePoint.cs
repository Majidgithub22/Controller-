using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class LevelCompletePoint : Singleton<LevelCompletePoint> {
    public static bool
        isFl,
        isFR,
        isRl,
        isRR,
        ispark
        ;
    public static int
        stopsCount
        ;
    public GameObject StopsPoint;
    public bool multipleStops;
    public GameObject player;
    private void Start() {
        stopsCount = 1;
        player = VehicleManager.Instance.currentVehicle;
        StopsPoint = LevelManager.Instance.currentlevel.transform.GetChild(1).gameObject;
        Debug.Log("stopsCount"+stopsCount);
    }
    public void Update() {
        if (isFR && isFl && isRR && isRl) {

            if (multipleStops) {
                if (stopsCount < LevelManager.Instance.currentlevel.transform.GetChild(1).gameObject.transform.childCount) {
                    Debug.Log("stopcout" + stopsCount);//activate the next stop after parking car 
                    LevelManager.Instance.currentlevel.transform.GetChild(1).gameObject.transform.GetChild(stopsCount).gameObject.SetActive(true);
                    PassengerDropOff();//deactivate previous stop after parking car
                    LevelManager.Instance.currentlevel.transform.GetChild(1).gameObject.transform.GetChild(stopsCount-1).gameObject.SetActive(false);
                    stopsCount++;
                } else {
                    multipleStops = false;
                    LevelManager.Instance.currentlevel.transform.GetChild(1).gameObject.transform.GetChild(stopsCount-1).gameObject.SetActive(false);
                    StartCoroutine( DropPasseneger());
                }
            } else {
                PlayerCollision.Instance.complete();
            }

            isFR = false;
            isFl = false;
            isRl = false;
            isRR = false;
        }
    }
    private void OnTriggerEnter(Collider other) {
        if (other.gameObject.CompareTag("FL")) {
            isFl = true;
        }
        if (other.gameObject.CompareTag("FR")) {
            isFR = true;
        }
        if (other.gameObject.CompareTag("RL")) {
            isRl = true;
        }
        if (other.gameObject.CompareTag("RR")) {
            isRR = true;
        }
    }
    private void OnTriggerExit(Collider other) {
        if (other.gameObject.CompareTag("FL")) {
            isFl = false;
        }
        if (other.gameObject.CompareTag("FR")) {
            isFR = false;
        }
        if (other.gameObject.CompareTag("RL")) {
            isRl = false;
        }
        if (other.gameObject.CompareTag("RR")) {
            isRR = false;
        }
    }
    private void PassengerDropOff() {
        player.gameObject.GetComponent<Rigidbody>().isKinematic = true;//Stop the car
        player.gameObject.transform.GetChild(1).gameObject.SetActive(true);//activating Camera
        ispark = true;
        GameplayManager.Instance.sounds.SetActive(false);
        Door.Instance.OpenDoor();
        StartCoroutine(WaitForPassengers());

    }
    public void ContinueRoute() {
        player.gameObject.GetComponent<Rigidbody>().isKinematic = false;//Stop the car
         player.gameObject.transform.GetChild(1).GetComponent<ChangeCamPositionSmoothly>().ResetCamPosition();
        player.gameObject.transform.GetChild(1).gameObject.SetActive(false);
        GameplayManager.Instance.sounds.SetActive(true);
        Door.Instance.OpenDoor();
    }
    IEnumerator WaitForPassengers() {
        yield return new WaitForSeconds(32);
        ispark = false;
        ContinueRoute();
        StopCoroutine(WaitForPassengers());
    }
    IEnumerator DropPasseneger() {
        VehicleManager.Instance.currentVehicle.transform.GetChild(6).gameObject.SetActive(true);//activate dropoff passenger
        VehicleManager.Instance.currentVehicle.transform.GetChild(4).gameObject.SetActive(false);//deactivate sitting passenger

        player.gameObject.GetComponent<Rigidbody>().isKinematic = true;//Stop the car
        player.gameObject.transform.GetChild(1).gameObject.SetActive(true);//activating Camera
        ispark = true;
        Door.Instance.OpenDoor();
        yield return new WaitForSeconds(20);
        StopCoroutine(WaitForPassengers());
        PlayerCollision.Instance.complete();
    }
}
