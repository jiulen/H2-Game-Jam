using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Obstacle : MonoBehaviour
{
    public enum ObstacleType
    {
        wall,
        water,
        collidable,
        floor,
        trapdoor,
    }

    [SerializeField] ObstacleType obstacleType;



    //[SerializeField] TypeObstacle typeObstacle;

    public Animator animator;
    public GameObject splashPrefab;

    float trapdoorUpdate;
    float trapdoorDelay = 1.5f;
    public bool isOpen = false;
    // Start is called before the first frame update
    void Start()
    {
        trapdoorUpdate = Time.time;
    }

    // Update is called once per frame
    void Update()
    {
        if (transform.position.z < LevelManager.instance.player.position.z - 8)
            Destroy(gameObject);

        switch(obstacleType)
        {
            case ObstacleType.trapdoor:
                Animator animator = transform.parent.GetComponent<Animator>();

                //if (animator.GetCurrentAnimatorClipInfo(0)[0].clip.name == "TrapdoorClosed")
                //    gameObject.GetComponent<Collider>().enabled = true;
                //else
                //    gameObject.GetComponent<Collider>().enabled = false;

                if (Time.time > (trapdoorUpdate + trapdoorDelay) - (1 * LevelManager.instance.diffScale))
                {
                    if (!isOpen)
                    {
                        animator.Play("TrapdoorOpening", -1, 0);
                        gameObject.GetComponent<Collider>().enabled = false;
                        isOpen = true;
                    }
                    else
                    {
                        animator.Play("TrapdoorClosing", -1, 0);
                        gameObject.GetComponent<Collider>().enabled = true;
                        isOpen = false;
                    }
                    trapdoorUpdate = Time.time;
                }
                break;
            default:
                break;
        }
    }

    public ObstacleType GetObstacleType()
    {
        return obstacleType;
    }
    public void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.tag != "Player" || obstacleType == ObstacleType.wall || obstacleType == ObstacleType.floor || obstacleType == ObstacleType.trapdoor)
            return;
        SwipeMovement.instance.rbody.constraints = RigidbodyConstraints.None;
        PlayerScript.instance.PlayerWalkDie(collision.collider.transform, transform);
    }

    public void OnTriggerEnter(Collider other)
    {
        GameObject go = Instantiate(splashPrefab, other.transform.position, Quaternion.Euler(-90, 0, 0));
        Destroy(go, go.GetComponent<ParticleSystem>().main.duration);

        if (other.tag == "Player")
            GameManager.instance.SetGameState(StateType.death);
    }
}
