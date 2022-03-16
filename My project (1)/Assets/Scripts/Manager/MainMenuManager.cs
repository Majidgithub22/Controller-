using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MainMenuManager : MonoBehaviour {
    public void ExitButton() {
        Application.Quit();
    }
    public void AboutUs() {
        Application.OpenURL("https://play.google.com/store/apps/developer?id=Fun+and+Learn");
    }
    public void RateUs() {
#if UNITY_ANDROID
        Application.OpenURL("market://details?id=com.FunAndLearn.HillyAreaDangerousBusSimulator");
#elif UNITY_IPHONE
 Application.OpenURL("itms-apps://itunes.apple.com/app/idYOUR_ID");
#endif
    }
    public void Play() {
        gameObject.SetActive(false);
    }
    public void privacyPolicy() {
#if UNITY_ANDROID
        Application.OpenURL("https://privacyofthegame.blogspot.com/2021/09/privacy-policy-hilly-area-dangerous-bus.html");
#endif
    }
}
