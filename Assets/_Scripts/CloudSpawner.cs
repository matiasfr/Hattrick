using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CloudSpawner : MonoBehaviour {

    public static float windSpeed;
    public static Quaternion windDirection = Quaternion.identity;
    public int minClouds = 20;
    public List<Cloud> cloudPrefabs = new List<Cloud>();
    public float spawnInterval = 2f;
    public float maxWind = 5f;
    public float minHeight = -5f;
    public float maxScale = 5f;
    public static int numClouds = 0;
    public float SpawnAreaSize = 500f;

    void Start() {
        if(windDirection == Quaternion.identity) windDirection = Quaternion.Euler(0, Random.Range(0, 360), 0);

        windSpeed = Random.Range(maxWind/2f, maxWind);
        transform.rotation = windDirection;


        int model;
        Vector3 pos;
        Quaternion rot;
        Vector3 scale;
        float spawnZ = -SpawnAreaSize;
        while (spawnZ < SpawnAreaSize) {
            float spawnX = -SpawnAreaSize;
            while (spawnX < SpawnAreaSize) {
                model = Random.Range(0, cloudPrefabs.Count - 1);
                pos = new Vector3(Random.Range(-randomness, randomness) + spawnX, Random.Range(minHeight, 0f), Random.Range(-randomness, randomness) + spawnZ);
                rot = Quaternion.Euler(0, Random.Range(0, 360), 0);
                scale = new Vector3(Random.Range(.8f, 1.2f), Random.Range(.8f, 1.2f), Random.Range(.8f, 1.2f)) * Random.Range(1f, maxScale);
                Cloud newCloud = Instantiate<Cloud>(cloudPrefabs[model]);
                newCloud.transform.parent = transform;

                newCloud.transform.localPosition = pos;
                newCloud.transform.localRotation = rot;
                newCloud.transform.localScale = scale;

                spawnX += 1 / (density / 100f);
            }
            spawnZ += 1 / (density / 100f);

        }
      
        StartCoroutine(SpawnClouds());
    }

    void Update() {

    }


    float spawnX = 0;
    public float randomness = 10f;
    public float density = .1f;
    IEnumerator SpawnClouds() {
        int model;
        Vector3 pos;
        Quaternion rot;
        Vector3 scale;

        while (true) {
            yield return new WaitForSeconds(spawnInterval / windSpeed);

            spawnX = -SpawnAreaSize;
            while (spawnX < SpawnAreaSize) {
                model = Random.Range(0, cloudPrefabs.Count - 1);
                pos = new Vector3(Random.Range(-randomness, randomness) + spawnX, Random.Range(minHeight, 0f), -SpawnAreaSize);
                rot = Quaternion.Euler(0, Random.Range(0, 360), 0);
                scale = new Vector3(Random.Range(.8f, 1.2f), Random.Range(.8f, 1.2f), Random.Range(.8f, 1.2f)) * Random.Range(1f, maxScale);
                Cloud newCloud = Instantiate<Cloud>(cloudPrefabs[model]);
                newCloud.transform.parent = transform;

                newCloud.transform.localPosition = pos;
                newCloud.transform.localRotation = rot;
                newCloud.transform.localScale = scale;

                spawnX += 1/(density/100f) ;
            }
        }
    }
}
