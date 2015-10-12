using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class EndGameGUI : MonoBehaviour {

    public Text WinnerText;
    private PlayersManager pm;

    // Use this for initialization
    void Start () {
        pm = PlayersManager.Instance;
        if (pm == null ) return;

        if(pm.winner == null)
            WinnerText.text = "No Contest!";
        else
            WinnerText.text = "Player " + pm.winner.playerNum + " wins!";

    }

    // Update is called once per frame
    void Update () {
	    
	}


}
