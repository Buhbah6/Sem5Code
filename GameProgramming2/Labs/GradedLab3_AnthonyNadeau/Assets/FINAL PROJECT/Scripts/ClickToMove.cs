using UnityEngine;
using System.Collections;
using UnityEngine.AI;


public class ClickToMove : MonoBehaviour 
{

	public float meleeDistance = 10f;
	public float meleeRate = .5f;
	//public PlayerMelee meleeScript;

	private Animator anim;
	private NavMeshAgent navMeshAgent;
	private Transform targetedEnemy;
	private Ray meleeRay;
	private RaycastHit meleeHit;
	private bool walking;
	public bool enemyClicked;
	private float nextFire;

	// Use this for initialization
	void Awake () 
	{
		anim = GetComponent<Animator> ();
		navMeshAgent = GetComponent<NavMeshAgent> ();
	}

	// Update is called once per frame
	void Update () 
	{
		Ray ray = Camera.main.ScreenPointToRay (Input.mousePosition);
		RaycastHit hit;
		if (Input.GetButtonDown ("Fire2")) 
		{
			if (Physics.Raycast(ray, out hit, 100))
			{
				if (hit.collider.CompareTag("Enemy"))
				{
					targetedEnemy = hit.transform;
					enemyClicked = true;
				}

				else
				{
					walking = true;
					enemyClicked = false;
					navMeshAgent.destination = hit.point;
					navMeshAgent.isStopped = false;
				}
			}
		}

		if (enemyClicked) {
			MoveAndMelee();
		}

		if (navMeshAgent.remainingDistance <= navMeshAgent.stoppingDistance) {
			if (!navMeshAgent.hasPath || Mathf.Abs (navMeshAgent.velocity.sqrMagnitude) < float.Epsilon)
				walking = false;
		} else {
			walking = true;
		}

		anim.SetBool ("IsWalking", walking);
	}

	private void MoveAndMelee()
	{
		if (targetedEnemy == null)
			return;
		navMeshAgent.destination = targetedEnemy.position;
		if (navMeshAgent.remainingDistance >= meleeDistance) {

			navMeshAgent.isStopped = false;
			walking = true;
			print ("Remaining Distance: " + navMeshAgent.remainingDistance);
		}

		if (navMeshAgent.remainingDistance <= meleeDistance) {

			transform.LookAt(targetedEnemy);
			Vector3 dirToMelee = targetedEnemy.transform.position - transform.position;
			if (Time.time > nextFire)
			{
				nextFire = Time.time + meleeRate;
				//meleeScript.Melee();
				print("Call melee script!");
			}
			navMeshAgent.isStopped = true;
			walking = false;
		}
	}

}

