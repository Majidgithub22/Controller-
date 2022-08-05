using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FPSCounter : MonoBehaviour
{
    private float timer, refresh, avgFramerate;
    string display = "{0} FPS";
    public Text m_Text;


    private void Update() {
        float timelapse = Time.smoothDeltaTime;
        timer = timer <= 0 ? refresh : timer -= timelapse;

        if (timer <= 0) avgFramerate = (int)(1f / timelapse);
        m_Text.GetComponent<Text>().text = string.Format(display, avgFramerate.ToString());
    }
}
