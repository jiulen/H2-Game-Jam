using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum StateType
{
    open,           // game opened, load main menu
    end,            // load main menu
    levelChange,    // load next level
    respawn,        // re-load level again when player dies
    credits         // show credits
}

public class GameManager : MonoBehaviour
{
    public static GameManager instance = null;
    public StateType state;
    public bool resetPLayer;
    public int highscore;

    // Start is called before the first frame update
    void Start()
    {
        if (instance == null)
        {
            instance = this;
        }
        else
            Destroy(this);
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
