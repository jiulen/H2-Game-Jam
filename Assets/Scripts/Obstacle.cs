using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class Obstacle : MonoBehaviour
{
    public enum ObstacleType
    {
        wall,
        water,
        collidable,
        floor,
    }

    [SerializeField] ObstacleType obstacleType;

    public enum TypeObstacle
    {
        Nothing,
        SafePlatform1,
        SafePlatform2,
        SafePlatform3,
        SwingingBall,
        Platformgaps,
        BalanceBeam
    }

    [SerializeField] TypeObstacle typeObstacle;

    public Animator animator;
    public GameObject splashPrefab;

    public int heightz = 0;
    public int widthx = 0;

    // Start is called before the first frame update
    void Start()
    {
        //switch (typeObstacle)
        //{
        //    case TypeObstacle.SafePlatform1:
        //        heightz = 2;
        //        widthx = 3;
        //        break;

        //    case TypeObstacle.SafePlatform2:
        //        heightz = 2;
        //        widthx = 5;
        //        break;

        //    case TypeObstacle.SafePlatform3:
        //        heightz = 3;
        //        widthx = 3;
        //        break;

        //    case TypeObstacle.SwingingBall:
        //        heightz = 1;
        //        widthx = 3;
        //        break;

        //    default:
        //        heightz = 0;
        //        widthx = 0;
        //        break;
            
        //}
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public ObstacleType GetObstacleType()
    {
        return obstacleType;
    }
    public TypeObstacle GetTypeObstacle()
    {
        return typeObstacle;
    }
    public void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.tag != "Player" || obstacleType == ObstacleType.wall || obstacleType == ObstacleType.floor)
            return;


        PlayerScript.instance.PlayerWalkDie(collision.collider.transform, transform);

        GameManager.instance.SetGameState(StateType.death);
    }

    public void OnTriggerEnter(Collider other)
    {
        GameObject go = Instantiate(splashPrefab, other.transform.position, Quaternion.Euler(-90, 0, 0));
        Destroy(go, go.GetComponent<ParticleSystem>().main.duration);

        if (other.tag == "Player")
            GameManager.instance.SetGameState(StateType.death);
    }
}
