using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class LoadingScreen : MonoBehaviour {
	public GameObject text;
	public GameObject progressBar;
	public int loadProgress = 0;

	void awake() {
	}

	// Use this for initialization
	void Start () {

		text.SetActive(false);
		progressBar.SetActive(false);
	}
	
	// Update is called once per frame
	void Update () {
	}

	public void LoadLevel(string levelToLoad) {
		StartCoroutine(DisplayLoadingScreen(levelToLoad));
	}

	IEnumerator DisplayLoadingScreen(string level) {
		text.SetActive(true);
		progressBar.SetActive(true);
		progressBar.GetComponent<Slider>().value = loadProgress;
		text.GetComponent<Text>().text = "Loading Progress " + loadProgress + "%";

		AsyncOperation async = Application.LoadLevelAsync(level);

		while(!async.isDone) {
			loadProgress = (int)(async.progress *100);
			text.GetComponent<Text>().text = "Loading Progress " + loadProgress + "%";
			progressBar.GetComponent<Slider>().value = loadProgress;
			yield return null;

		}
		yield return null;
	}
}

