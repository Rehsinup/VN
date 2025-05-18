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

    private void Awake()
    {
        spriteRenderer = GetComponent<SpriteRenderer>();
    }

    public void Init(Sprite face, Sprite back, MemoManager manager)
    {
        faceSprite = face;
        backSprite = back;
        memoManager = manager;

        // Affiche le dos
        ShowBack();
    }

    private void OnMouseDown()
    {
        if (isMatched || isRevealed || memoManager.IsBusy()) return;

        Reveal();
        memoManager.OnCardClicked(this);
    }

    public void Reveal()
    {
        isRevealed = true;
        spriteRenderer.sprite = faceSprite;
    }

    public void ShowBack()
    {
        isRevealed = false;
        spriteRenderer.sprite = backSprite;
    }

    public void MarkAsMatched()
    {
        isMatched = true;
    }
}
