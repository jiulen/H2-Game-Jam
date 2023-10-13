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
}
