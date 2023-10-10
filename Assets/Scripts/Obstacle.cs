using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Obstacle : MonoBehaviour
{
    public enum ObstacleType
    {
        wall,
        collidable
    }

    [SerializeField] ObstacleType obstacleType;
    public Animator animator;

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
}
