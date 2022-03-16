using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TrafficController : MonoBehaviour
{
    public bool isloop;
    public float moveSpeed;
    [SerializeField]
    private Transform[] waypoints;
    private int waypointIndex;
    private Vector3 pos;
    private void Start() {
        pos = transform.position;
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
    private void OnCollisionEnter(Collision collision) {
        if (collision.gameObject.CompareTag("Player")) {
            transform.position = pos;
        }
    }
}

