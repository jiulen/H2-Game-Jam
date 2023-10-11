using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LevelManager : MonoBehaviour
{
    public static LevelManager instance;

    public GameObject waterPrefab;

    private double groundIndex;

    private Transform player;

    private Vector3 offset;

    public ObstacleScript[] obstaclePrefabs;
    // Start is called before the first frame update
    void Start()
    {
        if (!instance)
            instance = this;
        else
            Destroy(this);

        offset = new Vector3(0, -0.25f, 0);
    }

    private void Awake()
    {
        player = GameObject.FindWithTag("Player").transform;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
