using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoinBehaviour : MonoBehaviour
{
    bool picked = false;
    public Animator coinAnimator;
    AnimatorStateInfo animatorStateInfo;
    float animationTime;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        animatorStateInfo = coinAnimator.GetCurrentAnimatorStateInfo(0);
        animationTime = animatorStateInfo.normalizedTime;

        if (picked && animationTime > 1)
        {
            //Remove coin
            Destroy(transform.parent.gameObject);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player") && PlayerScript.instance.isAlive && !picked) //check if player is alive
        {
            //Increase coin count
            GameManager.instance.coins += 1;
            GameManager.instance.coinsText.text = GameManager.instance.coins.ToString();

            //Play sound
            AudioManager.Instance.PlaySFX("coinPickup", transform.position);

            //Animation to destroy
            picked = true;
            coinAnimator.Play("CoinPicked");
        }
    }
}