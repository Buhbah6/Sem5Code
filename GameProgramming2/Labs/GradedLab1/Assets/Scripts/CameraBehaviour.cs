using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraBehaviour : MonoBehaviour
{
    private float speed;
    // Start is called before the first frame update
    void Start()
    {
        // Camera moves at the same speed as the ball, to follow the ball to the pins
        speed = BallBehaviour.Speed / BallBehaviour.Mass;
    }

    // Update is called once per frame
    void Update()
    {
        transform.Translate(0, 0, speed);
    }
}
