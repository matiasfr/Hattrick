using UnityEngine;
using System.Collections;

public class PillarController : MonoBehaviour {

	public float sinkDepth;
	public float sinkRate;
	private Material mat;
	private Renderer ren;
	public bool sinking = false;
	public bool rising = false;
	Vector3 initialPos;

	// Use this for initialization
	void Start () {
		ren = GetComponent<MeshRenderer>();
		mat = ren.material;
		initialPos = transform.position;
	}
	
	// Update is called once per frame
	void Update () {
		if(sinking) {
			//TODO: play some partile effect as it sinks
			if(transform.position.y > (initialPos.y - sinkDepth)  ) {
				transform.position = transform.position + new Vector3(0.0f,(-sinkRate*Time.deltaTime),0.0f);

			} else {
				sinking = false;
			}
		}

		if(rising) {
			//TODO: some visual change between rising and risen
			if(transform.position.y < initialPos.y  ) {
				transform.position = transform.position + new Vector3(0.0f, (+sinkRate*Time.deltaTime), 0.0f);
			} else {
				transform.position = initialPos; //insure alignment
				rising = false;
			}
		}
	}


}
