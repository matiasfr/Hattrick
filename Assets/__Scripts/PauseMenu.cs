using UnityEngine;
using System.Collections;
using InControl;

public class PauseMenu : MonoBehaviour {

    public Canvas canvas;


	void Start () {
	
	}

    void Update() {
        if (Input.GetKeyDown(KeyCode.Escape)) {
            if (canvas.gameObject.activeSelf) {
                Resume();
            }
            else {
                Pause();
            }
        }

        foreach (InputDevice device in InputManager.Devices) {

        }
    }
    public void Pause() {
        Time.timeScale = 0f;
        PlayersManager.Instance.ControlsEnabled = false;
        canvas.gameObject.SetActive(true);
    }


    public void Resume() {
        Time.timeScale = 1f;
        PlayersManager.Instance.ControlsEnabled = true;
        canvas.gameObject.SetActive(false);

    }

    public void QuitGame() {
        Application.Quit();
    }


    public void QuitToMenu() {
        Application.LoadLevel("MainMenu");
    }
}
