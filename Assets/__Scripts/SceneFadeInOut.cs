using UnityEngine;
using System.Collections;

public class SceneFadeInOut : MonoBehaviour
{
	public float fadeOutSpeed = 3.0f; 
	public float fadeInSpeed = 2.0f;// Speed that the screen fades to and from black.
	
	
	private bool sceneStarting = true;      // Whether or not the scene is still fading in.
	private float timer = 0.0f;
	
	void Awake ()
	{
		DontDestroyOnLoad(transform.gameObject);
		// Set the texture so that it is the the size of the screen and covers it.
		GetComponent<GUITexture>().pixelInset = new Rect(0f, 0f, Screen.width, Screen.height);
	}
	
	
	void Update ()
	{
		// If the scene is starting...
		if(sceneStarting)
			// ... call the StartScene function.
			StartScene();
	}
	
	
	void FadeToClear ()
	{
		// Lerp the colour of the texture between itself and transparent.
		GetComponent<GUITexture>().color = Color.Lerp(GetComponent<GUITexture>().color, Color.clear, fadeInSpeed * Time.deltaTime);
	}

	void StartScene ()
	{
		// Fade the texture to clear.
		FadeToClear();
		
		// If the texture is almost clear...
		if(GetComponent<GUITexture>().color.a <= 0f)
		{
			// ... set the colour to clear and disable the GUITexture.
			GetComponent<GUITexture>().color = Color.clear;
			GetComponent<GUITexture>().enabled = false;
			
			// The scene is no longer starting.
			sceneStarting = false;
		}
	}

	IEnumerator FadeToBlack(string levelName)
	{
		// Lerp the colour of the texture between itself and black.
		while(GetComponent<GUITexture>().color.a < 0.7) {
			timer+= Time.deltaTime*fadeOutSpeed;
			GetComponent<GUITexture>().color = Color.Lerp(GetComponent<GUITexture>().color, Color.black, timer*Time.deltaTime);
			yield return null;
		}
		//TODO: fade in/out sounds
		//TODO: loading screen
		//call when loadin ginto new scene: 
		sceneStarting = true; timer = 0.0f;

		Application.LoadLevel(levelName);
	}
	
	public void EndScene (string levelName)
	{
		// Make sure the texture is enabled.
		GetComponent<GUITexture>().enabled = true;
		// Start fading towards black.
		StartCoroutine(FadeToBlack(levelName));
	}
}