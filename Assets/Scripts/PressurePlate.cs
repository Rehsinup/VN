using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PressurePlate : MonoBehaviour
{
    public GameObject controlledWall; // Mur contrôlé par cette plaque
    private int objectsOnPlate = 0; // Gère plusieurs objets sur la plaque

    private MovingWalls wallScript;

    private void Start()
    {
        wallScript = controlledWall.GetComponent<MovingWalls>(); // Assure-toi que le mur est prêt
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player1") || other.CompareTag("Player2")) // Vérifie si un joueur marche sur la plaque
        {
            objectsOnPlate++;
            controlledWall.SetActive(false); // Désactive le mur
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player1") || other.CompareTag("Player2")) // Vérifie si un joueur quitte la plaque
        {
            objectsOnPlate--;
            if (objectsOnPlate <= 0)
            {
                controlledWall.SetActive(true); // Réactive le mur si plus personne dessus
            }
        }
    }
}
