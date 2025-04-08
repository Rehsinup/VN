using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Memory : MonoBehaviour
{
    public Color[] colors = new Color[10]; // 5 couleurs différentes
    private Dictionary<int, Color> sphereColors = new Dictionary<int, Color>(); // Associe chaque sphère à une couleur
    private Renderer sphereRenderer;

    private static GameObject firstSelected = null;
    private static GameObject secondSelected = null;
    private static bool canSelect = true; // Bloque les clics pendant une vérification

    private static int matchedPairsCount = 0; // Nombre de paires validées
    private const int totalPairs = 5; // Nombre total de paires à trouver

    private bool isMatched = false; // Vérifie si la sphère est validée
    private bool isClicked = false; // Vérifie si la sphère a été cliquée

    void Start()
    {
        sphereRenderer = GetComponent<Renderer>();

        // Assigne une couleur unique mais la sphère commence en blanc
        int id = int.Parse(gameObject.name.Replace("Sphere", ""));
        sphereColors[id] = GetAssignedColor(id);
        sphereRenderer.material.color = Color.white;
    }

    void OnMouseEnter()
    {
        if (!isMatched && !isClicked) // Affiche la couleur seulement si la sphère n'a pas été cliquée ou validée
        {
            sphereRenderer.material.color = sphereColors[int.Parse(gameObject.name.Replace("Sphere", ""))];
        }
    }

    void OnMouseExit()
    {
        if (!isMatched && !isClicked) // Revient en blanc sauf si la sphère est validée ou déjà cliquée
        {
            sphereRenderer.material.color = Color.white;
        }
    }

    void OnMouseDown()
    {
        if (!canSelect || isMatched || isClicked) return; // Ignore les clics sur les sphères déjà validées ou déjà cliquées

        isClicked = true; // Garde la couleur affichée après le clic
        sphereRenderer.material.color = sphereColors[int.Parse(gameObject.name.Replace("Sphere", ""))];

        if (firstSelected == null)
        {
            firstSelected = gameObject;
        }
        else if (secondSelected == null && firstSelected != gameObject)
        {
            secondSelected = gameObject;
            canSelect = false; // Bloque les sélections rapides

            StartCoroutine(CheckMatch());
        }
    }

    IEnumerator CheckMatch()
    {
        yield return new WaitForSeconds(0.5f);

        if (firstSelected.GetComponent<Memory>().sphereRenderer.material.color ==
            secondSelected.GetComponent<Memory>().sphereRenderer.material.color)
        {
            // Les sphères restent affichées car elles sont validées
            firstSelected.GetComponent<Memory>().isMatched = true;
            secondSelected.GetComponent<Memory>().isMatched = true;

            matchedPairsCount++; // Augmente le compteur de paires trouvées

            if (matchedPairsCount == totalPairs)
            {
                Debug.Log("Toutes les paires ont été trouvées ! Minijeu terminé !");
            }
        }
        else
        {
            // Si la paire ne correspond pas, elles redeviennent blanches et cliquables
            firstSelected.GetComponent<Memory>().isClicked = false;
            secondSelected.GetComponent<Memory>().isClicked = false;

            firstSelected.GetComponent<Memory>().sphereRenderer.material.color = Color.white;
            secondSelected.GetComponent<Memory>().sphereRenderer.material.color = Color.white;
        }

        firstSelected = null;
        secondSelected = null;
        canSelect = true;
    }

    Color GetAssignedColor(int index)
    {
        return colors[index % 5]; // Chaque couleur a une paire
    }
}
