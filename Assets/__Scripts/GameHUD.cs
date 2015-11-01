using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;
public class GameHUD : MonoBehaviour {

    public static GameHUD Instance; 
    public List<PlayerHUD> playerHUDs;
    public Text CenterText;


    void Start () {
        Instance = this;
	}
	

    public void DisplayCenterText(string text, float seconds) {
        StartCoroutine(ShowText(text, seconds));
    }

    IEnumerator ShowText(string text, float seconds) {
        Debug.Log("Center Text: " + text);
        CenterText.text = text;
        yield return new WaitForSeconds(seconds);
        CenterText.text = "";
    }

    public PlayerHUD SetPlayerHUD(Player p) {
        playerHUDs[p.playerNum].gameObject.SetActive(true);
        playerHUDs[p.playerNum].SetPlayer(p);
        return playerHUDs[p.playerNum];
    }
}
