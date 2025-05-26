using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class CardFloatManager : MonoBehaviour
{
    [Header("Param�tres g�n�raux")]
    [SerializeField] private Vector3 startPosition = Vector3.zero;
    [SerializeField] private int numberOfCards = 5;
    [SerializeField] private float spacing = 1.5f;
    [Tooltip("Hauteur totale de la diagonale entre la carte la plus basse (gauche) et la plus haute (droite)")]
    [SerializeField] private float diagonalHeight = 2f;
    [SerializeField] private float floatHeight = 0.5f;
    [SerializeField] private float floatDuration = 2f;

    [Header("Rotation individuelle")]
    [Tooltip("Rotations initiales pour chaque carte (en degr�s)")]
    [SerializeField] private Vector3[] initialRotations = new Vector3[5];

    [Header("Pr�fab et sprites")]
    [SerializeField] private GameObject cardPrefab;
    [SerializeField] private Sprite[] cardSprites = new Sprite[5];

    private List<GameObject> spawnedCards = new List<GameObject>();

    void Start()
    {
        SpawnCards();
    }

    void SpawnCards()
    {
        if (cardSprites.Length < numberOfCards)
        {
            Debug.LogError("Tu dois assigner au moins " + numberOfCards + " sprites dans cardSprites !");
            return;
        }

        spawnedCards.Clear();

        // Calcul position premi�re carte (centr�e sur startPosition)
        float totalWidth = (numberOfCards - 1) * spacing;
        Vector3 firstCardPos = startPosition - new Vector3(totalWidth / 2f, 0f, 0f);

        for (int i = 0; i < numberOfCards; i++)
        {
            // Calcul de la hauteur selon la position sur la diagonale
            float heightOffset = (diagonalHeight / (numberOfCards - 1)) * i;

            Vector3 pos = firstCardPos + new Vector3(i * spacing, heightOffset, 0f);

            GameObject card = Instantiate(cardPrefab, pos, Quaternion.identity, transform);

            // Appliquer rotation individuelle si d�finie, sinon rotation par d�faut � (0,0,0)
            Vector3 rot = (initialRotations != null && i < initialRotations.Length) ? initialRotations[i] : Vector3.zero;
            card.transform.localRotation = Quaternion.Euler(rot);

            // Assigner le sprite diff�rent � chaque carte
            SpriteRenderer sr = card.GetComponent<SpriteRenderer>();
            if (sr != null)
            {
                sr.sprite = cardSprites[i];
            }
            else
            {
                Debug.LogWarning("Le prefab n'a pas de SpriteRenderer !");
            }

            // Faire flotter verticalement avec offset al�atoire (sur l'axe Y)
            float randomDelay = Random.Range(0f, floatDuration);
            card.transform.DOLocalMoveY(pos.y + floatHeight, floatDuration)
                .SetLoops(-1, LoopType.Yoyo)
                .SetEase(Ease.InOutSine)
                .SetDelay(randomDelay);

            spawnedCards.Add(card);
        }
    }
}
