using UnityEngine;
using System.Collections;

public class PillarController : MonoBehaviour {

	public float sinkDepth;
	public float sinkRate;
	private Material mat;
	private Renderer ren;
	private bool sinking = false;
	private bool rising = false;
	Vector3 initialPos;
	public Gradient pillarGradient;
	public Color hotColor;
	GradientColorKey[] gck;
	GradientAlphaKey[] gak;
	private float heat = 0;
	public float heatRate;
	public float downTime;
	public float cooldownRate;
	private bool active;

	// Use this for initialization
	void Start () {
		ren = GetComponent<MeshRenderer>();
		mat = ren.material;
		initialPos = transform.position;

		pillarGradient = new Gradient();

		gck = pillarGradient.colorKeys;
		gck[0].color = mat.color;
		gck[0].time = 0.0f;
		gck[1].color = hotColor;
		gck[1].time = 1.0f;

		gak = pillarGradient.alphaKeys;
		gak[0].alpha = 1.0f;
		gak[0].time = 0.0f;
		gak[1].alpha = 1.0f;
		gak[1].time = 1.0f;

		pillarGradient.SetKeys(gck, gak);

		}
	
	// Update is called once per frame
	void Update () {

		active = PlayersManager.Instance.ControlsEnabled;


		if(active) {
			heat -= cooldownRate*Time.deltaTime;
			heat = Mathf.Clamp(heat, 0, 100);
			mat.color = pillarGradient.Evaluate(heat / 100.0f);
			if(heat >= 100.0f) {
				sinking = true;
			}
		}

	}

	void fixedUpdate() {
		if(sinking) {
			//TODO: play some partile effect as it sinks
			active  = false;
			if(transform.position.y > (initialPos.y - sinkDepth)  ) {
				transform.position = transform.position + new Vector3(0.0f,(-sinkRate*Time.deltaTime),0.0f);
			} else {
				sinking = false;
				StartCoroutine(pillarWait());
			}
		}
		
		if(rising) {
			//TODO: some visual change between rising and risen
			if(transform.position.y < initialPos.y  ) {
				transform.position = transform.position + new Vector3(0.0f, (sinkRate*Time.deltaTime), 0.0f);
			} else {
				transform.position = initialPos; //insure alignment
				rising = false;
				active = true;
			}
		}
	}

	IEnumerator pillarWait() {
		yield return new WaitForSeconds(downTime);
		heat = 0;
		mat.color = pillarGradient.Evaluate(heat / 100.0f);
		rising = true;
	}

	void PlayerOnPlatform(PlayerController p) {
        Debug.Log("PlayerOnPlatform");
		heat += heatRate*Time.deltaTime;
		//heat = Mathf.Clamp(heat, 0, 100);
	}


}
