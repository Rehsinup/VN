using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class test : MonoBehaviour
{
    private float offSet = 0.0f;
    // Start is called before the first frame update
    void Start()
    {
        SpriteRenderer Render = GetComponent<SpriteRenderer>();
        Material mat = Render.material;
        mat.SetFloat("_Intensity", 0.5f);
        offSet = Random.value * 5f;
    }

    // Update is called once per frame
    void Update()
    {
        SpriteRenderer Render = GetComponent<SpriteRenderer>();
        Material mat = Render.material;
        mat.SetFloat("_Intensity", Mathf.Clamp(Mathf.Sin(Time.time + offSet), 0f, 0.5f ) + 0.5f);
    }
}
