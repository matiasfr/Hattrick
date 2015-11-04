using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;
using InControl;

public class Tutorial : MonoBehaviour {

    public Text instructionText;
    public PlayerHUD tutorialHUD;
    public List<GameObject> Instructions = new List<GameObject>();
    private int currentInstruction;
    public GameObject EnergyIndicatorText;

	void Start () {
        Instructions[0].SetActive(true);
        for (int i = 1; i < Instructions.Count; i++) {
            Instructions[i].SetActive(false);

        }
        currentInstruction = 0;
        StartCoroutine(CycleHUD());
    }

    public void NextInstruction() {
        if (currentInstruction < Instructions.Count - 1) { //Not on last instruction
            Instructions[currentInstruction].SetActive(false);

            currentInstruction++;
            Instructions[currentInstruction].SetActive(true);

        }

    }
    public void PrevInstruction() {
        if (currentInstruction != 0) { //Not on first instruction
            Instructions[currentInstruction].SetActive(false);
            currentInstruction--;
            Instructions[currentInstruction].SetActive(true);

        }

    }

    void Update() {
        foreach(InputDevice device in InputManager.Devices) {
            if (device.DPadRight.WasPressed) {
                NextInstruction();
            }
            else if (device.DPadLeft.WasPressed) {
                PrevInstruction();
            }
        }
        if (index < PlayersManager.Players.Count && currentInstruction >= 2 && currentInstruction <= 3 && PlayersManager.Players[index] != null && PlayersManager.Players[index].character != null && !PlayersManager.Players[index].character.stunned) {
            EnergyIndicatorText.SetActive(true);
            EnergyIndicatorText.transform.position = PlayersManager.Players[index].character.transform.position;
        }
        else {
            EnergyIndicatorText.SetActive(false);
        }



    }
    int index = 0;

    IEnumerator CycleHUD() {
        while (true) {
            if (tutorialHUD.gameObject.activeInHierarchy && index < PlayersManager.Players.Count) {
                tutorialHUD.SetPlayer(PlayersManager.Players[index]);
            }
            yield return new WaitForSeconds(4f);
            if(PlayersManager.Players.Count > 0) index = (index + 1) % PlayersManager.Players.Count;

        }
    }
}
