using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BallBehaviour : MonoBehaviour
{
    GameObject floor;
    // Start is called before the first frame update
    void Start()
    {
        floor = GameObject.Find("Floor");
        floor.GetComponent<AudioSource>().Play();
    }

    void OnCollisionEnter(Collision col) {
        if (col.gameObject.name == "Rails") {
            floor.GetComponent<AudioSource>().Stop();
        }
    }
}
