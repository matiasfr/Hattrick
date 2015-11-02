using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;
using InControl;

public class Tutorial : MonoBehaviour {

    public Text instructionText;

    public List<GameObject> Instructions = new List<GameObject>();
    private int currentInstruction;

	void Start () {
        Instructions[0].SetActive(true);
        for (int i = 1; i < Instructions.Count; i++) {
            Instructions[i].SetActive(false);

        }
        currentInstruction = 0;
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
       

    }
}
