using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using DG.Tweening;

public class MovingWalls : MonoBehaviour
{
    [SerializeField] Vector3 Offset;
    [SerializeField] float AnimationTime;
    Vector3 StartPos;
    bool Hidden = false;
    // Start is called before the first frame update
    void Start()
    {
        StartPos = transform.localPosition; 
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    public void Move()
    {
        Hidden = !Hidden;
        if (Hidden)
        {
            transform.DOLocalMove(StartPos + Offset, AnimationTime);
        }
        else
        {
            transform.DOLocalMove(StartPos, AnimationTime);
        }
    }
}

