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
        wreckingBall,
        logroll
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
        switch(obstacleType)
        {
            case ObstacleType.trapdoor:
                if (isOpen)
                {
                    animator.Play("TrapdoorOpened", -1, 0);
                }
                else
                    animator.Play("TrapdoorClosed", -1, 0);
                trapdoorUpdate = Time.time;
                break;
            case ObstacleType.wreckingBall:
                animator.speed *= 1 + UnityEngine.Random.Range(LevelManager.instance.diffScale, LevelManager.instance.diffScale + 0.05f);
                break;
            case ObstacleType.logroll:
                animator.speed *= 1 + UnityEngine.Random.Range(LevelManager.instance.diffScale, LevelManager.instance.diffScale + 0.05f);
                break;
            default:
                break;
        }
    }
    private void Awake()
    {
        
    }
    // Update is called once per frame
    void Update()
    {
        if (transform.position.z < LevelManager.instance.player.position.z - 8)
            Destroy(gameObject);
            
        switch (obstacleType)
        {
            case ObstacleType.wreckingBall:
                if(Vector3.Distance(transform.position, LevelManager.instance.player.position) < 3)
                {

                }
                break;
            case ObstacleType.trapdoor:
                Animator animator = transform.parent.GetComponent<Animator>();

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
                    //AudioManager.Instance.PlaySFX("Trapdoor")
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
        if (collision.collider.tag != "Player" || obstacleType == ObstacleType.wall || obstacleType == ObstacleType.floor || obstacleType == ObstacleType.trapdoor || GameManager.instance.state == StateType.death)
            return;
        SwipeMovement.instance.rbody.constraints = RigidbodyConstraints.None;
        AudioManager.Instance.PlaySFX("splash1", transform.position);
        PlayerScript.instance.PlayerWalkDie(collision.collider.transform, transform);
    }

    public void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Player" && obstacleType != ObstacleType.water)
        {
            AudioManager.Instance.PlaySFX("whoosh", other.transform.position);
            return;
        }
  
       

        if (other.tag == "Player")
        {
            GameObject go = Instantiate(splashPrefab, other.transform.position, Quaternion.Euler(-90, 0, 0));
            Destroy(go, go.GetComponent<ParticleSystem>().main.duration);
            AudioManager.Instance.PlaySFX("splash2", other.transform.position);
            GameManager.instance.SetGameState(StateType.death);
        }

    }
}
