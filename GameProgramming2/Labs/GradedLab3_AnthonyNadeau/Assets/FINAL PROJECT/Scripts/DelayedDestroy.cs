using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DelayedDestroy : MonoBehaviour
{
    public float delay = 1;

    void OnEnable()
    {
        if (delay == 0)
        {
            Destroy(gameObject);
            return;
        }

        Destroy(gameObject, delay);
    }
}
