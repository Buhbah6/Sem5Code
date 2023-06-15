using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Interactable : MonoBehaviour
{
    [HideInInspector]
    public NavMeshAgent navMeshAgent;
    public float interactionDistance = 2;
    private bool hasInteracted;

    public virtual void MoveToInteract(NavMeshAgent navMeshAgent)
    {
        this.navMeshAgent = navMeshAgent;
        navMeshAgent.destination = this.transform.position;
        navMeshAgent.isStopped = false;
    }

    protected virtual void Update()
    {
        if (!hasInteracted)
        {
            if(navMeshAgent != null && !navMeshAgent.pathPending)
            {
                if (navMeshAgent.remainingDistance <= navMeshAgent.stoppingDistance * 2)
                {
                   // navMeshAgent.angularSpeed = 0;
                    navMeshAgent.gameObject.transform.rotation = Quaternion.Slerp(navMeshAgent.gameObject.transform.rotation, Quaternion.LookRotation((transform.position - navMeshAgent.gameObject.transform.position).normalized), Time.deltaTime * 10);
                }

                if (navMeshAgent.remainingDistance <= navMeshAgent.stoppingDistance)
                {
                    Interact();
                    hasInteracted = true;
                }
            }
        }
    }

    public virtual void Interact()
    {
        print("Interacting with base class.");
    }

}
