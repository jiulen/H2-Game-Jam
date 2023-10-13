using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScrollingImageBackground : MonoBehaviour
{
    public float scrollSpeed = 0.1f;
    Vector2 offset;
    private Material material;
    public bool x = true;

    void Start()
    {
        material = GetComponent<Renderer>().material;
    }

    void Update()
    {
        transform.position = new Vector3(CameraScript.instance.transform.position.x, -1.9f, CameraScript.instance.transform.position.z + 10);
        //offset.x += offset.x - CameraScript.instance.transform.position.x;
        offset.y -= Time.deltaTime * scrollSpeed;
        material.mainTextureOffset = offset;
    }
}
