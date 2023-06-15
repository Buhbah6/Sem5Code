using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RandomForce : MonoBehaviour
{
    void OnEnable()
    {
        Rigidbody rb = GetComponent<Rigidbody>();

        if (rb != null)
        {
            rb.AddForce(Vector3.one * Random.Range(-1f, 1f), ForceMode.VelocityChange);
        }
    }
}
