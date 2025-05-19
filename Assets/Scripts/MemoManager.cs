using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class CardPair
{
    public Sprite card1;
    public Sprite card2;
}

public class MemoManager : MonoBehaviour
{
    public List<CardPair> cardPairs = new List<CardPair>();
    public GameObject cardPrefab;
    public Sprite backSprite;

    public Vector2 startPosition = new Vector2(-4f, 2f);
    public Vector2 spacing = new Vector2(2f, 2.5f);

    private Card firstCard;
    private Card secondCard;
    private bool isChecking = false;
    private int totalCardsToMatch;
    private int matchedCards = 0;
    private LevelLoader levelLoader;
    private List<GameObject> instantiatedCards = new List<GameObject>();

    private void Start()
    {
        SetupCards();
        totalCardsToMatch = 12;
        matchedCards = 0;
        levelLoader = FindObjectOfType<LevelLoader>();
    }

    void SetupCards()
    {
        List<Sprite> selectedSprites = new List<Sprite>();
        List<int> indices = new List<int>();
        for (int i = 0; i < cardPairs.Count; i++) indices.Add(i);
        Shuffle(indices);

        for (int i = 0; i < 6; i++)  
        {
            int index = indices[i];
            selectedSprites.Add(cardPairs[index].card1);
            selectedSprites.Add(cardPairs[index].card2);
        }

        Shuffle(selectedSprites);

        for (int i = 0; i < selectedSprites.Count; i++)
        {
            int row = i / 6;
            int col = i % 6;
            Vector2 pos = startPosition + new Vector2(col * spacing.x, -row * spacing.y);

            GameObject cardObj = Instantiate(cardPrefab, pos, Quaternion.identity);
            Card card = cardObj.GetComponent<Card>();
            card.Init(selectedSprites[i], backSprite, this);

            instantiatedCards.Add(cardObj);
        }
    }

    public void OnCardClicked(Card clickedCard)
    {
        if (firstCard == null)
        {
            firstCard = clickedCard;
        }
        else if (secondCard == null)
        {
            secondCard = clickedCard;
            StartCoroutine(CheckMatch());
        }
    }

    IEnumerator CheckMatch()
    {
        isChecking = true;
        yield return new WaitForSeconds(1f);

        if (firstCard.faceSprite == secondCard.faceSprite)
        {
            firstCard.MarkAsMatched();
            secondCard.MarkAsMatched();

            matchedCards += 2;

            if (matchedCards >= totalCardsToMatch)
            {
                Debug.Log("Toutes les paires ont été trouvées !");
                ClearAllCards();          
                levelLoader.ExitLevel(); 
            }
        }
        else
        {
            firstCard.ShowBack();
            secondCard.ShowBack();
        }

        firstCard = null;
        secondCard = null;
        isChecking = false;
    }

    public bool IsBusy()
    {
        return isChecking;
    }

    void Shuffle<T>(List<T> list)
    {
        for (int i = list.Count - 1; i > 0; i--)
        {
            int r = Random.Range(0, i + 1);
            T tmp = list[i];
            list[i] = list[r];
            list[r] = tmp;
        }
    }


    public void ClearAllCards()
    {
        foreach (GameObject card in instantiatedCards)
        {
            Destroy(card);
        }
        instantiatedCards.Clear();
    }
}
