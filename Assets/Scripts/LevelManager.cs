using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class LevelManager : MonoBehaviour
{
    public static LevelManager instance;

    public GameObject waterPrefab;

    private double groundIndex;

    private Transform player;

    public Vector3 offset;

    public ObstacleScript[] obstaclePrefabs;
    // Start is called before the first frame update
    void Start()
    {
        if (!instance)
            instance = this;
        else
            Destroy(this);

        offset = new Vector3(0, -0.25f, 3); 
    }

    private void Awake()
    {
        player = GameObject.FindWithTag("Player").transform;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void CreateObstacle(string name, Vector3 position)
    {
        ObstacleScript s = Array.Find(obstaclePrefabs, x => x.name == name);

        if (s == null)
        {
            Debug.Log("object not found");
        }
        else
        {
            //offset.x += s.widthx;
            int initpos = (int)(s.heightz * 0.5f);
            offset.z += initpos;
            Debug.Log(offset.z + " " + s.heightz);
            GameObject go = Instantiate(s.obstacle, offset, Quaternion.identity);
            offset.z += (s.heightz - initpos);
        }
    }
}
