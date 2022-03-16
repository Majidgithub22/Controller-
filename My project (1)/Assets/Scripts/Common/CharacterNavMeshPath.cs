using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class CharacterNavMeshPath : MonoBehaviour {
    private Transform[] waypoints;
    private int
        moveSpeed = 1,
        waypointIndex
        ;
    private static int pCount;
    private bool isNavDone;
    private Transform target;
    private NavMeshAgent agent;
    private Animator animator;
    private void Start() {
        agent = GetComponent<NavMeshAgent>();
        animator = GetComponent<Animator>();
        target = VehicleManager.Instance.currentVehicle.transform.GetChild(2).gameObject.transform;//target is position for navmesh to follow
        waypoints = new Transform[VehicleManager.Instance.currentVehicle.transform.GetChild(3).transform.childCount];//setting the waypoints of current Vehicle
        for (int i = 0; i < waypoints.Length; i++) { waypoints[i] = VehicleManager.Instance.currentVehicle.transform.GetChild(3).transform.GetChild(i).transform; }
    }
    private void Update() {
        if (LevelCompletePoint.ispark) {
            animator.SetBool("Walk", true); 
            if (!isNavDone) { CheckDestination(); }
            else { MoveWithWaypoints(); }
        }
    }
    private void CheckDestination() {
        agent.SetDestination(target.position);
        if ((Vector3.Distance(target.position, transform.position)) <= 2.0) { isNavDone = true; }
    }
    private void MoveWithWaypoints() {
        gameObject.GetComponent<NavMeshAgent>().enabled = false;
        transform.position = Vector3.MoveTowards(transform.position, waypoints[waypointIndex].transform.position, moveSpeed * Time.deltaTime);
        transform.rotation = waypoints[waypointIndex].rotation;
        if (transform.position == waypoints[waypointIndex].transform.position) { waypointIndex += 1; }
        if (waypointIndex == waypoints.Length) { DeactivatePassenger(); }
    }
    private void DeactivatePassenger() {
        VehicleManager.Instance.currentVehicle.transform.GetChild(4).transform.GetChild(pCount).gameObject.SetActive(true);
        gameObject.SetActive(false);
        pCount++;
    }

}
