using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using System.Linq;

public class LevelManager : MonoBehaviour
{
    public static LevelManager instance;

    public GameObject waterPrefab;

    private double groundIndex;

    public Transform player;

    public Vector3 offset;

    public ObstacleScript[] obstaclePrefabs;

    private float difficulty;

    private ObstacleScript prevObject;

    public int colToIgnore;

    public float diffScale;

    ObstacleScript coin;
    public enum TypeObstacle
    {
        //platform1x1,
        WreckingBall,
        Trapdoor,
        SmallLogRamp,
        //FlyingFish,
        TypeObstacleSize
    }

    public enum SafePlatform
    {
        platform5x5,
        platform3x3,
        platform1x3,
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
        colToIgnore = (UnityEngine.Random.value < 0.5f ? -2 : -1);
        coin = Array.Find(obstaclePrefabs, x => x.name == "Coin");
        Debug.Log(coin);
        GenerateLevel();

    }

    // Update is called once per frame
    void Update()
    {
        difficulty = Mathf.Log(PlayerScript.instance.score * 0.1f);
        difficulty = Mathf.Max(1, difficulty); //min difficulty is 1

        if (GameManager.instance.state == StateType.death && !SwipeMovement.instance.rbody.isKinematic && player.transform.position.y < -4)
            SwipeMovement.instance.rbody.isKinematic = true;
    }

    public void GenerateLevel()
    {
        diffScale = 1 * Mathf.Log10(difficulty);
        // generate the next 30 tiles
        Vector3 initialOffset = offset;
        int amtToGenerate = 30 - (int)(offset.z % 30);

        //Debug.Log(prevObject.isSafe);
        while (offset.z < initialOffset.z + amtToGenerate)
        {
            if (prevObject.isSafe)
            {

                if(prevObject.widthx != 1)
                {
                    int maxx = (int)(prevObject.widthx * 0.5f);
                    int minx = -maxx;
         
                    if (colToIgnore > offset.x + minx)
                    {
                        if (prevObject.name == "platform1x3")
                            offset.x += minx;

                        else if (prevObject.name == "platform1x2")
                            offset.x += minx + 1;

                        else
                            offset.x = UnityEngine.Random.Range((int)(offset.x + minx), colToIgnore);
                    }
                    else if(colToIgnore < offset.x + maxx)
                    {
                        if (prevObject.name == "platform1x3")
                            offset.x += maxx;
                        else if (prevObject.name == "platform1x2")
                            offset.x += maxx - 1;
                        else
                            offset.x = UnityEngine.Random.Range(colToIgnore + 1,(int)(offset.x + maxx + 1));
                    }    
                }

                int numToGenerate = (int)UnityEngine.Random.Range(1f + diffScale, 3f + diffScale);
                TypeObstacle obstacle;
                obstacle = (TypeObstacle)UnityEngine.Random.Range(0, (int)TypeObstacle.TypeObstacleSize);
                for (int i = 0; i < numToGenerate; ++i)
                {

                    switch (obstacle)
                    {
                        case TypeObstacle.Trapdoor:
                            int opp = (UnityEngine.Random.value < 0.5f ? 0 : 1);
                            if(opp == 0)
                                CreateObstacle(obstacle.ToString(), 2, 1);
                            else
                                CreateObstacle(obstacle.ToString(), 2, 1, true);
                            break;

                            
                        case TypeObstacle.SmallLogRamp:
                        case TypeObstacle.WreckingBall:
                            int opp1 = (UnityEngine.Random.value < 0.5f ? 0 : 1);
                            if (opp1 == 0)
                                CreateObstacle(obstacle.ToString(), 1, 0);
                            else
                                CreateObstacle(obstacle.ToString(), 1, 0, false, 180);
                            break;

                        default:
                            CreateObstacle(obstacle.ToString());
                            break;
                    }
                    //obstacle = TypeObstacle.Trapdoor;
                    //CreateObstacle(obstacle.ToString(), 2, 1);
                }
            }
            else
            {

                int random = UnityEngine.Random.Range(0, 100);
                //if (random < (5 - diffScale))
                //    CreateObstacleAfter("platform5x5", offset);
                if (random >= 5 && random < (15 - diffScale))
                {
                    CreateObstacleAfter("platform3x3", offset);
                }
                else
                {
                    SafePlatform safe;
                    safe = (SafePlatform)UnityEngine.Random.Range(2, (int)SafePlatform.SafePlatformSize);
                    CreateObstacleAfter(safe.ToString(), offset);
                }
            }
        }
    }

    public void CreateObstacle(string name, int amt = 1, int xOffset = 0, bool opp = false, int yRotation = 0)
    {
        ObstacleScript s = Array.Find(obstaclePrefabs, x => x.name == name);

        if (s == null)
        {
            Debug.Log("object not found");
        }
        else
        {
            if(amt == 1)
            {
                int initpos = (int)(s.heightz * 0.5f);
                offset.z += initpos;
                GameObject go = Instantiate(s.obstacle, offset, Quaternion.Euler(0, yRotation, 0));
                offset.z += (s.heightz - initpos);
                prevObject = s;
            }
            else
            {
                int initpos = (int)(s.heightz * 0.5f);
                offset.z += initpos;
                GameObject go = Instantiate(s.obstacle, offset, Quaternion.Euler(0, 0, 0));

                if (UnityEngine.Random.value < 0.1f)
                    Instantiate(coin.obstacle, new Vector3(offset.x, 0.5f, offset.z), Quaternion.Euler(0, 0, 90));
                prevObject = s;
                GameObject go1 = Instantiate(s.obstacle, offset + new Vector3(xOffset,0,0), Quaternion.Euler(0, 180, 0));
                offset.z += (s.heightz - initpos);
                if(opp)
                {
                    go.transform.GetChild(0).GetComponent<Obstacle>().isOpen = true;
                    go1.transform.GetChild(0).GetComponent<Obstacle>().isOpen = true;
                }
            }
        }
    }

    public void CreateObstacleAfter(string name, Vector3 position)
    {
        ObstacleScript s = Array.Find(obstaclePrefabs, x => x.name == name);

        if (s == null)
        {
            Debug.Log("object not found");
        }
        else
        {

            colToIgnore = (int)offset.x;
            int maxx = (int)(s.widthx * 0.5f);
            int minx = -maxx;

            if(name == "platform1x3")
            {
                offset.x += (UnityEngine.Random.value < 0.5f ? minx : maxx);
            }
            else
            {
                if (s.widthx % 2 == 0)
                {
                    offset.x += UnityEngine.Random.Range(minx + 1, maxx + 1);
                }
                else
                    offset.x += UnityEngine.Random.Range(minx, maxx + 1);
            }
          

            int initpos = (int)(s.heightz * 0.5f);
            offset.z += initpos;
            GameObject go = Instantiate(s.obstacle, offset, Quaternion.identity);
            if (UnityEngine.Random.value < 0.3f)
                Instantiate(coin.obstacle, new Vector3(offset.x, 0.5f, offset.z), Quaternion.Euler(0,0,90));
            offset.z += (s.heightz - initpos);

            prevObject = s;
        }
    }
}
