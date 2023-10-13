using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pendulum : MonoBehaviour
{
    int maxrot = 45;
    int minrot = -45;
    public bool swingLeft = false;
    float lastChanged;
    // Start is called before the first frame update
    void Start()
    {
        lastChanged = Time.time;
    }

    // Update is called once per frame
    void Update()
    {
        if (transform.rotation.z >= -.5f && transform.rotation.z <= .5f && Time.time > lastChanged + 0.5f)
        {
            swingLeft = !swingLeft;
            lastChanged = Time.time;
        }


        if(swingLeft)
        {
            transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.Euler(0, 0, -45), Time.deltaTime);
        }
        else
        {
            transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.Euler(0, 0, 45), Time.deltaTime);
        }



    }
}
