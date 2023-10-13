using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GachaManager : MonoBehaviour
{
    public GameObject gachaObj;
    public Animator gachaAnimator;
    AnimatorStateInfo animatorStateInfo;
    public float animationTime;

    public bool waiting = true;
    public float waitTime;
    public float waitTimer;

    public GachaResultManager gachaResultManager;

    // Start is called before the first frame update
    void Start()
    {
        PrepareAnim(true);
    }

    // Update is called once per frame
    void Update()
    {
        if (waiting)
        {
            waitTimer += Time.deltaTime;

            if (waitTimer > waitTime)
            {
                gachaAnimator.speed = 1;
                waiting = false;
            }
        }
        else
        {
            animatorStateInfo = gachaAnimator.GetCurrentAnimatorStateInfo(0);
            animationTime = animatorStateInfo.normalizedTime;

            if (animationTime > 1)
            {
                gachaResultManager.GetCharacter();

                GameManager.instance.OpenGachaResult(true);
                GameManager.instance.OpenGacha(false);

                PrepareAnim(false);
            }
        }
    }

    public void PrepareAnim(bool prepare)
    {
        gachaObj.SetActive(prepare);

        if (prepare)
        {
            waiting = true;
            gachaAnimator.speed = 0;
            gachaAnimator.Play("gachafishanim", -1, 0);
        }
    }

    public void ReduceCoins()
    {
        GameManager.instance.coins -= GameManager.instance.gachaCost;
        PlayerPrefs.SetInt("coins", GameManager.instance.coins);

        GameManager.instance.gachaInvenCoinsOutline.text = GameManager.instance.coins.ToString();
        GameManager.instance.gachaInvenCoinsText.text = GameManager.instance.coins.ToString();
        GameManager.instance.gachaCoinsOutline.text = GameManager.instance.coins.ToString();
        GameManager.instance.gachaCoinsText.text = GameManager.instance.coins.ToString();
    }
}
