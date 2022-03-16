using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Door : Singleton<Door> {
    private Animator animator;
    public static bool isOpenDoor = true;
    void Start() {
        animator = GetComponent<Animator>();
    }
    public void OpenDoor() {
        if (LevelCompletePoint.ispark) {
            animator.SetBool("doorOpen", true);
        } else {
            animator.SetBool("doorOpen", false);
        }
    }
}
