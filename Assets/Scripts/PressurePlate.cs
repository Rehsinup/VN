using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PressurePlate : MonoBehaviour
{
    public GameObject controlledWall; // Mur contr�l� par cette plaque
    private int objectsOnPlate = 0; // G�re plusieurs objets sur la plaque

    private MovingWalls wallScript;

    private void Start()
    {
        wallScript = controlledWall.GetComponent<MovingWalls>(); // Assure-toi que le mur est pr�t
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player1") || other.CompareTag("Player2")) // V�rifie si un joueur marche sur la plaque
        {
            objectsOnPlate++;
            controlledWall.SetActive(false); // D�sactive le mur
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player1") || other.CompareTag("Player2")) // V�rifie si un joueur quitte la plaque
        {
            objectsOnPlate--;
            if (objectsOnPlate <= 0)
            {
                controlledWall.SetActive(true); // R�active le mur si plus personne dessus
            }
        }
    }
}
