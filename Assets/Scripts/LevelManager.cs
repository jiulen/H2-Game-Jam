using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class LevelManager : MonoBehaviour
{
    public static LevelManager instance;

    public GameObject waterPrefab;

    private double groundIndex;

    public Transform player;

    public Vector3 offset;

    public ObstacleScript[] obstaclePrefabs;

    private int difficulty;

    private ObstacleScript prevObject;

    public enum TypeObstacle
    {
        platform1x1,
        WreckingBall,

    }

    public enum SafePlatform
    {
        platform5x5,
        platform1x3,
        platform3x3,
        platform1x1,
        platform1x2,
        platform2x3,
        platformPillar,
        SafePlatformSize
    }
    void Start()
    {
        if (!instance)
            instance = this;
        else
            Destroy(this);
    }

    private void Awake()
    {
        offset = new Vector3(0, -0.25f, 3);
        player = GameObject.FindWithTag("Player").transform;
        difficulty = 1;
        prevObject = Array.Find(obstaclePrefabs, x => x.name == "platform5x5");
        GenerateLevel();
    }

    // Update is called once per frame
    void Update()
    {
        difficulty = PlayerScript.instance.score;
    }

    public void GenerateLevel()
    {
        float diffScale = 1 * Mathf.Log10(difficulty);
        // generate the next 30 tiles
        Vector3 initialOffset = offset;
        int amtToGenerate = 30 - (int)(offset.z % 30);

        TypeObstacle obstacle;
        Debug.Log(prevObject.isSafe);
        while (offset.z < initialOffset.z + amtToGenerate)
        {
            //CreateObstacle("5x5 platform", offset);



            if (prevObject.isSafe)
            {
                int maxx = (int)(prevObject.widthx * 0.5f);
                int minx = -maxx;

                if (prevObject.widthx % 2 == 0)
                {
                    maxx--;
                }
 

                offset.x += UnityEngine.Random.Range(minx, maxx + 1);
                //obstacle = TypeObstacle.platform1x1;
                //CreateObstacle(obstacle.ToString(), offset);
                
                int numToGenerate = (int)UnityEngine.Random.Range(1f + diffScale, 3f + diffScale);
                Debug.Log(numToGenerate);
                for (int i = 0; i < numToGenerate; ++i)
                {
                    obstacle = TypeObstacle.WreckingBall;
                    CreateObstacle(obstacle.ToString(), offset);
                }
            }
            else
            {
                int random = UnityEngine.Random.Range(0, 100);
                if (random < (5 - diffScale))
                    CreateObstacle("platform5x5", offset);
                else if (random >= 5 && random < (15 - diffScale))
                {
                    CreateObstacle("platform3x3", offset);
                }
                else
                {
                    SafePlatform safe;
                    safe = (SafePlatform)UnityEngine.Random.Range(0, (int)SafePlatform.SafePlatformSize);
                    CreateObstacle(safe.ToString(), offset);
                }
            }
        }
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
            int maxx = (int)(s.widthx * 0.5f);
            int minx = -maxx;

            if (s.widthx % 2 == 0)
                minx++;

            offset.x += UnityEngine.Random.Range(minx, maxx + 1);

            int initpos = (int)(s.heightz * 0.5f);
            offset.z += initpos;
            GameObject go = Instantiate(s.obstacle, offset, Quaternion.identity);
            offset.z += (s.heightz - initpos);

            prevObject = s;
        }
    }
}
