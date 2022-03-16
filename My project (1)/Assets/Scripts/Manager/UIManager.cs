using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIManager : Singleton<UIManager>
{
    public GameObject
        levelComplete,
        levelFail,
        pauseDlg,
        startDlg,
        loading
;
  public void showlevelComplete() {
        GameplayManager.Instance.sounds.SetActive(false);
        levelComplete.SetActive(true);
    }
    public void showLevelFail() {
        GameplayManager.Instance.sounds.SetActive(false);
        levelFail.SetActive(true);
    }
    public void pause() {
        Time.timeScale = 0;
        GameplayManager.Instance.sounds.SetActive(false);
       pauseDlg.SetActive(true);
    }
    public void resume() {
        Time.timeScale = 1;
        GameplayManager.Instance.sounds.SetActive(true);
        pauseDlg.SetActive(false);
    }
    public void start() {
        Time.timeScale = 1;
        GameplayManager.Instance.sounds.SetActive(true);
        startDlg.SetActive(false);
    }

}
