using UnityEngine;
using System.Collections;

public class FacetedWater : MonoBehaviour {
    public Vector2 range = new Vector2(0.1f, 1);
    public float speed = 1;
    float[] randomTimes;
    public float noise = .5f;
    Mesh mesh;

    void Start() {
        mesh = GetComponent<MeshFilter>().mesh;
        int i = 0;
        randomTimes = new float[mesh.vertices.Length];
        Vector3[] vertices = mesh.vertices;


        while (i < mesh.vertices.Length) {
            randomTimes[i] = Random.Range(range.x, range.y);

            vertices[i].x += Random.Range(-noise, noise);
            vertices[i].z += Random.Range(-noise, noise);
            i++;
        }
        mesh.vertices = vertices;


    }


    void Update() {

        Vector3[] vertices = mesh.vertices;
        Vector3[] normals = mesh.normals;
        int i = 0;
        while (i < vertices.Length) {
          
            vertices[i].y = 1 * Mathf.PingPong(Time.time * speed, randomTimes[i]);
            normals[i] = Vector3.up;
            i++;
        }
        mesh.vertices = vertices;
        //mesh.RecalculateNormals();
       
   }
}