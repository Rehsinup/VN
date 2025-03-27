using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RouletteColor : MonoBehaviour
{
    public void OnButtonClick()
    {

        float randomValue = Random.Range(0f, 1f);
        string colorResult;

        if (randomValue < 0.45f)
            colorResult = "Noir";
        else if (randomValue < 0.90f)
            colorResult = "Rouge";
        else
            colorResult = "Vert";

        Debug.Log("Couleur obtenue : " + colorResult);
    }
}
