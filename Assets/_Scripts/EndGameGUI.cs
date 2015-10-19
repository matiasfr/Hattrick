﻿using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class EndGameGUI : MonoBehaviour {

    public static EndGameGUI Instance;
    public Text WinnerText;
    public Canvas canvas;
    private PlayersManager pm;

    void Start() {
        Instance = this;
    }

    public void DisplayResults() {
        
        pm = PlayersManager.Instance;
        if (pm == null) return;

        if (pm.winner == null)
            WinnerText.text = "No Contest!";
        else
            WinnerText.text = "Player " + pm.winner.playerNum + " wins!";
        canvas.gameObject.SetActive(true);
    }

    public void Rematch() {
        PlayersManager.Instance.StartGame();
        canvas.gameObject.SetActive(false);
    }

    public void StageSelect() {
        SceneManager.Instance.GoToScene("StageSelect");
    }

    public void BackToMenu() {
        SceneManager.Instance.QuitToMenu();

    }
}