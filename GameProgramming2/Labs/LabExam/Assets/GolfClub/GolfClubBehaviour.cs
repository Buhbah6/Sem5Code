using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GolfClubBehaviour : MonoBehaviour
{
    Animator animator;
    AudioSource audioSource;
    // Start is called before the first frame update
    void Start()
    {
        animator = GetComponent<Animator>();
        audioSource = GetComponent<AudioSource>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space)) {
            animator.enabled = true;
        }
        if (Input.GetKeyUp(KeyCode.Space)) {
            animator.Play("GolfSwingForward");
        }
    }

    void HitBall() {
        GameObject ball = GameObject.Find("GolfBall");
        ball.GetComponent<BallBehaviour>().enabled = true;
        Rigidbody ballRigidbody = ball.GetComponentInChildren<Rigidbody>();
        Vector3 forwardForce = new Vector3(0f,-8f, -20 * 10);
        ball.GetComponent<AudioSource>().Play();
        ballRigidbody.AddForce(forwardForce, ForceMode.Impulse);
    }

    void SwingClub() {
        audioSource.Play();
    }

}
