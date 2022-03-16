using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Waypoints : MonoBehaviour
{
    public bool isloop;
    public float moveSpeed;
    [SerializeField]
    private Transform[] waypoints;
    private int waypointIndex;
    private Vector3 pos;
    private void Start() {
        pos = transform.position;
        waypoints = new Transform[VehicleManager.Instance.currentVehicle.transform.GetChild(5).transform.childCount];//setting the waypoints of current Vehicle
        for (int i = 0; i < waypoints.Length; i++) { waypoints[i] = VehicleManager.Instance.currentVehicle.transform.GetChild(5).transform.GetChild(i).transform; }
    }
    private void MoveWithWaypoints() {
        transform.position = Vector3.MoveTowards(transform.position, waypoints[waypointIndex].transform.position, moveSpeed * Time.deltaTime);
        transform.rotation = waypoints[waypointIndex].rotation;
        if (transform.position == waypoints[waypointIndex].transform.position) { waypointIndex += 1; }
        if (waypointIndex == waypoints.Length) {
            if (isloop) {
                transform.position = pos;
                waypointIndex = 0;
            } else {
                gameObject.SetActive(false);
            }
        }
    }
    private void Update() {
        MoveWithWaypoints();
    }
}
