using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class GachaResultManager : MonoBehaviour
{
    public TMP_Text nameObj;
    public TMP_Text nameOutlineObj;

    public string[] names;
    public GameObject[] images;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void GetCharacter()
    {
        int character = GameManager.instance.GetRandomAvailableCharacter();
        GameManager.instance.AddCharacter(character);

        nameObj.text = names[character];
        nameOutlineObj.text = names[character];
        for (int i = 0; i < images.Length; ++i)
        {
            if (i == character)
            {
                images[i].SetActive(true);
            }
            else
            {
                images[i].SetActive(false);
            }
        }
    }
}
