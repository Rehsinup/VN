using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PressurePlate : MonoBehaviour
{
    public GameObject controlledWall; // Mur contrôlé par cette plaque
    public bool isEndPlate = false; // Cette plaque est-elle une plaque de fin ?

    private int objectsOnPlate = 0; // Gère plusieurs objets sur la plaque

    private static bool endPlate1Active = false;
    private static bool endPlate2Active = false;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player")) // Vérifie si un joueur marche sur la plaque
        {
            objectsOnPlate++;
            controlledWall.SetActive(false); // Désactive le mur

            if (isEndPlate) // Vérifie si cette plaque est une plaque de fin
            {
                if (endPlate1Active == false) endPlate1Active = true;
                else endPlate2Active = true;
                CheckEndCondition();
            }
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player")) // Vérifie si un joueur quitte la plaque
        {
            objectsOnPlate--;
            if (objectsOnPlate <= 0)
            {
                controlledWall.SetActive(true); // Réactive le mur si plus personne dessus

                if (isEndPlate) // Si c'est une plaque de fin, reset son état
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
            Debug.Log("Niveau terminé !");
            EndLevel();
        }
    }

    void EndLevel()
    {
       
        //SceneManager.LoadScene("NiveauSuivant");
        
    }
}

