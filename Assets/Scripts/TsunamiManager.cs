using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TsunamiManager : MonoBehaviour
{
    public Animator animator;
    AnimatorStateInfo animatorStateInfo;
    public float animationTime;

    bool tsunamiScreening = false;
    bool deathScreened = false;

    // Start is called before the first frame update
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {
        if (GameManager.instance.state == StateType.death)
        {
            if (!tsunamiScreening)
            {
                tsunamiScreening = true;
                animator.Play("TsunamiScreen");
            }
            else if (!deathScreened)
            {
                animatorStateInfo = animator.GetCurrentAnimatorStateInfo(0);
                animationTime = animatorStateInfo.normalizedTime;

                if (animationTime > 1)
                {
                    deathScreened = true;
                    GameManager.instance.TriggerDeathUI();
                }
            }
        }
    }
}