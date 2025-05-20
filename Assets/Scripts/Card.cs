using System.Collections;
using UnityEngine;

public class Card : MonoBehaviour
{
    private SpriteRenderer spriteRenderer;
    private MemoManager memoManager;

    public Sprite faceSprite; // La vraie carte
    public Sprite backSprite; // Le dos
    public bool isRevealed = false;
    public bool isMatched = false;
    public GameObject cardLight;

    private void Awake()
    {
        spriteRenderer = GetComponent<SpriteRenderer>();
        cardLight.SetActive(false);
    }

    public void Init(Sprite face, Sprite back, MemoManager manager)
    {
        faceSprite = face;
        backSprite = back;
        memoManager = manager;

        // Affiche le dos
        transform.localScale = new Vector3(1, 1, 1); // s'assurer que la scale est normale
        ShowBackImmediate();
    }

    private void OnMouseDown()
    {
        if (isMatched || isRevealed || memoManager.IsBusy()) return;

        Reveal();
        memoManager.OnCardClicked(this);
    }

    private void OnMouseEnter()
    {
        if (isMatched || isRevealed) return;
        cardLight.SetActive(true);
    }
    private void OnMouseExit()
    {
        cardLight.SetActive(false);
    }
    public void Reveal()
    {
        isRevealed = true;
        StartCoroutine(FlipCard(faceSprite));
    }

    public void ShowBack()
    {
        isRevealed = false;
        StartCoroutine(FlipCard(backSprite));
    }

    public void ShowBackImmediate()
    {
        isRevealed = false;
        spriteRenderer.sprite = backSprite;
    }

    public void MarkAsMatched()
    {
        isMatched = true;
    }

    private IEnumerator FlipCard(Sprite newSprite)
    {
        // Étape 1 : réduire le scale X à 0 (effet de fermeture)
        float duration = 0.2f;
        float elapsed = 0f;
        Vector3 originalScale = transform.localScale;

        while (elapsed < duration)
        {
            float t = elapsed / duration;
            transform.localScale = new Vector3(Mathf.Lerp(originalScale.x, 0, t), 1, 1);
            elapsed += Time.deltaTime;
            yield return null;
        }

        transform.localScale = new Vector3(0, 1, 1);

        // Étape 2 : changer le sprite
        spriteRenderer.sprite = newSprite;

        // Étape 3 : agrandir le scale X vers 1 (effet d’ouverture)
        elapsed = 0f;
        while (elapsed < duration)
        {
            float t = elapsed / duration;
            transform.localScale = new Vector3(Mathf.Lerp(0, originalScale.x, t), 1, 1);
            elapsed += Time.deltaTime;
            yield return null;
        }

        transform.localScale = originalScale;
    }
}
