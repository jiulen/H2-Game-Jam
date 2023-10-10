using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Obstacle : MonoBehaviour
{
    public enum ObstacleType
    {
        wall,
        water,
        collidable
    }

    [SerializeField] ObstacleType obstacleType;
    public Animator animator;
    public GameObject splashPrefab;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public ObstacleType GetObstacleType()
    {
        return obstacleType;
    }

    public void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.tag != "Player")
            return;

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
