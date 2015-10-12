using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;
using InControl;

public class Tutorial : MonoBehaviour {

    public Text instructionText;

    public List<string> Instructions = new List<string>();
    private int currentInstruction;

	void Start () {
        instructionText.text = Instructions[0];
	}

    public void NextInstruction() {
        if (currentInstruction < Instructions.Count - 1) { //Not on last instruction
            currentInstruction++;
            UpdateText();
        }

    }
    public void PrevInstruction() {
        if (currentInstruction != 0) { //Not on first instruction
            currentInstruction--;
            UpdateText();
        }

    }

    private void UpdateText () {
        instructionText.text = Instructions[currentInstruction];
    }

    void Update() {
        if (InputManager.ActiveDevice.RightBumper.WasPressed || InputManager.ActiveDevice.DPadRight.WasPressed) {
            NextInstruction();
        }
        else if (InputManager.ActiveDevice.LeftBumper.WasPressed || InputManager.ActiveDevice.DPadLeft.WasPressed) {
            PrevInstruction();
        }

        if (Input.GetKeyUp(KeyCode.Escape)) {
            SceneManager.Instance.GoToScene("MainMenu");
        }
    }
}
