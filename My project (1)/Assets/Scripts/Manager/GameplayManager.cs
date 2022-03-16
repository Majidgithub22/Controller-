﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameplayManager : Singleton<GameplayManager> {
    public Session session;
    [HideInInspector]
    public GameObject sounds;
    private GameObject player;
    private int levelindex;
    public void Start() {
        player = VehicleManager.Instance.currentVehicle;
        sounds = player.transform.GetChild(2).gameObject;
        sounds.SetActive(false);
        Time.timeScale = 0;
        LevelManager.Instance.startLevel(
            index: session.level,
           onCompleteCallBack: () => {
               Debug.Log("Show LevelComplete");
               UIManager.Instance.showlevelComplete();
           },
           onGameOverCallBack: () => {
               Debug.Log("Show LevelFail");
               UIManager.Instance.showLevelFail();
           }
            );

    }
    public void home() {
        SceneManager.LoadScene(0);
        UIManager.Instance.loading.SetActive(true);
    }
    public void replay() {
        SceneManager.LoadScene(1);
      //  SceneManager.LoadScene("GamePlay");
    }
    public void next() {
        if (session.level + 1 < LevelManager.Instance.Levels.Length) session.level++;
        Debug.Log(session.level);
        Debug.Log(session.totalLevel);

        if (session.level >= PlayerPrefs.GetInt("unlocklevels") && session.level < session.totalLevel) {
            Debug.Log("inside lokc");
            PlayerPrefs.SetInt("unlocklevels", PlayerPrefs.GetInt("unlocklevels") + 1);
        }
        Debug.Log("Levels" + PlayerPrefs.GetInt("unlocklevels"));
        SceneManager.LoadScene(1);
    }

}

