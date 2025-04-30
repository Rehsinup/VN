using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BypassMinigame : MonoBehaviour
{
    public Color[] colors = new Color[5]; // 5 couleurs diff�rentes
    private Dictionary<int, Color> sphereColors = new Dictionary<int, Color>(); // Associe chaque sph�re � une couleur
    private Renderer sphereRenderer;

    private static GameObject firstSelected = null;
    private static GameObject secondSelected = null;
    private static bool canSelect = true; // Bloque les clics pendant une v�rification

    private static int matchedPairsCount = 0; // Nombre de paires valid�es
    private const int totalPairs = 5; // Nombre total de paires � trouver

    private bool isMatched = false; // V�rifie si la sph�re est valid�e
    private bool isClicked = false; // V�rifie si la sph�re a �t� cliqu�e

    void Start()
    {
        sphereRenderer = GetComponent<Renderer>();

        // Assigne une couleur unique mais la sph�re commence en blanc
        int id = int.Parse(gameObject.name.Replace("Sphere", ""));
        sphereColors[id] = GetAssignedColor(id);
        sphereRenderer.material.color = Color.white;
    }
    /// <summary>
    /// Affiche la couleur de la sph�re lorsque la souris entre dans le collider.
    /// </summary>
    void OnMouseEnter()
    {
        if (!isMatched && !isClicked) // Affiche la couleur seulement si la sph�re n'a pas �t� cliqu�e ou valid�e
        {
            sphereRenderer.material.color = sphereColors[int.Parse(gameObject.name.Replace("Sphere", ""))];
        }
    }

    void OnMouseExit()
    {
        if (!isMatched && !isClicked) // Revient en blanc sauf si la sph�re est valid�e ou d�j� cliqu�e
        {
            sphereRenderer.material.color = Color.white;
        }
    }

    void OnMouseDown()
    {
        if (!canSelect || isMatched || isClicked) return; // Ignore les clics sur les sph�res d�j� valid�es ou d�j� cliqu�es

        isClicked = true; // Garde la couleur affich�e apr�s le clic
        sphereRenderer.material.color = sphereColors[int.Parse(gameObject.name.Replace("Sphere", ""))];

        if (firstSelected == null)
        {
            firstSelected = gameObject;
        }
        else if (secondSelected == null && firstSelected != gameObject)
        {
            secondSelected = gameObject;
            canSelect = false; // Bloque les s�lections rapides

            StartCoroutine(CheckMatch());
        }
    }

    IEnumerator CheckMatch()
    {
        yield return new WaitForSeconds(0.5f);

        if (firstSelected.GetComponent<BypassMinigame>().sphereRenderer.material.color ==
            secondSelected.GetComponent<BypassMinigame>().sphereRenderer.material.color)
        {
            // Les sph�res restent affich�es car elles sont valid�es
            firstSelected.GetComponent<BypassMinigame>().isMatched = true;
            secondSelected.GetComponent<BypassMinigame>().isMatched = true;

            matchedPairsCount++; // Augmente le compteur de paires trouv�es

            if (matchedPairsCount == totalPairs)
            {
                Debug.Log("Toutes les paires ont �t� trouv�es ! Minijeu termin� !");
            }
        }
        else
        {
            // Si la paire ne correspond pas, elles redeviennent blanches et cliquables
            firstSelected.GetComponent<BypassMinigame>().isClicked = false;
            secondSelected.GetComponent<BypassMinigame>().isClicked = false;

            firstSelected.GetComponent<BypassMinigame>().sphereRenderer.material.color = Color.white;
            secondSelected.GetComponent<BypassMinigame>().sphereRenderer.material.color = Color.white;
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
