using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PressurePlate : MonoBehaviour
{
    public GameObject controlledWall; // Mur contr�l� par cette plaque
    public bool isEndPlate = false; // Cette plaque est-elle une plaque de fin ?

    private int objectsOnPlate = 0; // G�re plusieurs objets sur la plaque

    private static bool endPlate1Active = false;
    private static bool endPlate2Active = false;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player")) // V�rifie si un joueur marche sur la plaque
        {
            objectsOnPlate++;
            controlledWall.SetActive(false); // D�sactive le mur

            if (isEndPlate) // V�rifie si cette plaque est une plaque de fin
            {
                if (endPlate1Active == false) endPlate1Active = true;
                else endPlate2Active = true;
                CheckEndCondition();
            }
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player")) // V�rifie si un joueur quitte la plaque
        {
            objectsOnPlate--;
            if (objectsOnPlate <= 0)
            {
                controlledWall.SetActive(true); // R�active le mur si plus personne dessus

                if (isEndPlate) // Si c'est une plaque de fin, reset son �tat
                {
                    if (endPlate2Active) endPlate2Active = false;
                    else endPlate1Active = false;
                }
            }
        }
    }

    void CheckEndCondition()
    {
        if (endPlate1Active && endPlate2Active)
        {
            Debug.Log("Niveau termin� !");
            EndLevel();
        }
    }

    void EndLevel()
    {
       
        //SceneManager.LoadScene("NiveauSuivant");
        
    }
}

