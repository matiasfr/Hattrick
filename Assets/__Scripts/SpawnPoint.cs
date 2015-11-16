using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SpawnPoint : MonoBehaviour {


    private static List<SpawnPoint> allPoints = new List<SpawnPoint>();
	// Use this for initialization
	void Start () {    
	}
	
    void OnEnable() {
        allPoints.Add(this);
    }

    void OnDisable() {
        allPoints.Remove(this);
    }
	// Update is called once per frame
	void Update () {
	
	}

    public float DistToClosestPlayer() {
        float closestDist = 10000;
        float dist;
        foreach(Player p in PlayersManager.Players) {
            if (p.character != null) {
                dist = Vector3.Distance(p.character.transform.position, transform.position);
                if (dist < closestDist) closestDist = dist;
            }
        }
        return closestDist;
    }
    static int layerMask = 1 << 8;
    public static Vector3 GetSpawnPoint() {

        float maxDist = 0;
        SpawnPoint sp = null;
        //Find the spawn point with the largest closest player distance
        foreach(SpawnPoint p in allPoints) {

            float hoverHeight = 1.6f;
            RaycastHit hit;

            if (!Physics.Raycast(p.transform.position, Vector3.down, out hit, p.transform.position.y + 1f, layerMask)) {
                continue;
            }

            float dist = p.DistToClosestPlayer();
            if(dist > maxDist) {
                sp = p;
                maxDist = dist;
            }
        }
        if (sp == null) return new Vector3(0, 15f, 0);
        return sp.transform.position;
    }

    void OnDrawGizmos() {
        Gizmos.color = new Color(.1f, .2f, .9f, .5f);
        Gizmos.DrawSphere(transform.position, .3f);
    }
} 
