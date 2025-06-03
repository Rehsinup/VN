using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using vinkn;

[RequireComponent(typeof(SpriteRenderer))]
public class Simple2DDisplay : MonoBehaviour
{
    SpriteRenderer spr;
    Character chara;

    // Start is called before the first frame update
    void Awake()
    {
        spr = GetComponent<SpriteRenderer>();

        chara = GetComponent<Character>();

        if (chara != null)
            spr.sprite = chara.details?.GetDefaultFace() ?? spr.sprite;
    }

    public void FlipX()
    {
        spr.flipX = !spr.flipX;
    }

    public void FlipY()
    {
        spr.flipY = !spr.flipY;
    }

    public void ChangeEmotion(string content)
    {
        spr.sprite = chara.details?.GetFace(content) ?? spr.sprite;
    }

    public void Fade(float alpha, float duration)
    {
        if (!gameObject.activeSelf)
        {
            gameObject.SetActive(true);
        }

        if (!spr.enabled)
            spr.enabled = true;

        Debug.Log("FEUR");

        StartCoroutine(GameObjectUtility.TimedCall(spr.color.a, alpha, duration, ChangeAlpha));
    }

    private void ChangeAlpha(float start, float final, float t)
    {
        Color c = spr.color;
        c.a = Mathf.Lerp(start, final, t);
        spr.color = c;

        if (UnityEngine.Mathf.Approximately(t, 1) && UnityEngine.Mathf.Approximately(0, final))
        {
            gameObject.SetActive(false);
        }
        else if (UnityEngine.Mathf.Approximately(t, 0))
        {
            gameObject.SetActive(true);
        }
    }

    public void Move(Vector3 worldPos, float duration)
    {
        StartCoroutine(GameObjectUtility.TimedCall(transform.position, worldPos, duration, ChangePos));
    }
    private void ChangePos(Vector3 start, Vector3 final, float t)
    {
        transform.position = Vector3.Lerp(start, final, t);
    }
}
