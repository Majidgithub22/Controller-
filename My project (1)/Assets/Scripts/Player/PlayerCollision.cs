using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class PlayerCollision : Singleton<PlayerCollision> {
    public UnityEvent onCompleteLevel = new UnityEvent();
    public UnityEvent onGameOver = new UnityEvent();
    private int collisionCount;
    private bool isparked;
    public bool chances;


    public void complete() {
        Time.timeScale = 0;
        CoinsManager.Instance.SetCoins();
        onCompleteLevel?.Invoke();
    }
    private void OnCollisionEnter(Collision other) {
        if (chances) {
            if (CheckPoints.chancesCount > 3) {
                Time.timeScale = 0;
                Debug.Log("game Over Now");
                onGameOver?.Invoke();
            }
        }
        else if(other.gameObject.CompareTag("Hurdle")) {
            Time.timeScale = 0;
            Debug.Log("game Over Now");
            onGameOver?.Invoke();
        }
    }
}
