using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using InControl;

public class PauseMenu : MonoBehaviour {

    public Canvas canvas;
    public Button ResumeButton;
    public static bool Paused = false;
    public static PauseMenu Instance;
    void Awake() {
        Instance = this;
    }
	void Start () {
	
	}

    void Update() {
        if (Input.GetKeyDown(KeyCode.Escape)) {
            if (Paused) {
                Resume();
            }
            else {
                Pause();
            }
        }


        foreach (InputDevice device in InputManager.Devices) {
            if (device.MenuWasPressed) {
                if (Paused) {
                    Resume();
                }
                else {
                    Pause();
                }
            }
        }
    }

    public void Pause() {
        Paused = true;
        Time.timeScale = 0f;
        PlayersManager.Instance.ControlsEnabled = false;
        canvas.gameObject.SetActive(true);
        EventSystem.current.SetSelectedGameObject(ResumeButton.gameObject);
        ResumeButton.OnSelect(null);
    }


    public void Resume() {
        Paused = false;
        Time.timeScale = 1f;
        PlayersManager.Instance.ControlsEnabled = true;
        canvas.gameObject.SetActive(false);

    }

    public void QuitGame() {
        Application.Quit();
    }


    public void QuitToMenu() {
        Resume();
        Application.LoadLevel("MainMenu");
    }
}
