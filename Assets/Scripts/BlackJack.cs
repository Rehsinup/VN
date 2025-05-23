using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class BlackjackGame : MonoBehaviour
{
    public Button btnTirer, btnStop, btnRejouer;
    public TMP_Text messageText;

    public Image imagePlayerCard;
    public Image imageDealerCard;
    [SerializeField] private Sprite cardPrefab;

    [Header("Cartes par valeur (4 sprites par carte)")]
    public List<Sprite> sprites2;
    public List<Sprite> sprites3;
    public List<Sprite> sprites4;
    public List<Sprite> sprites5;
    public List<Sprite> sprites6;
    public List<Sprite> sprites7;
    public List<Sprite> sprites8;
    public List<Sprite> sprites9;
    public List<Sprite> sprites10;
    public List<Sprite> spritesJ;
    public List<Sprite> spritesQ;
    public List<Sprite> spritesK;

    private Dictionary<int, List<Sprite>> cardSpriteMap;

    int playerScore = 0, dealerScore = 0;
    bool playerTurn = true, gameOver = false;
    private LevelLoader LevelLoader;

    void Start()
    {
        btnTirer.onClick.AddListener(() => PlayTurn());
        btnStop.onClick.AddListener(EndGame);
        btnRejouer.onClick.AddListener(StartGame);
        LevelLoader = FindObjectOfType<LevelLoader>();

        InitCardSpriteMap();
        StartGame();
    }

    void InitCardSpriteMap()
    {
        cardSpriteMap = new Dictionary<int, List<Sprite>>
        {
            { 2, sprites2 },
            { 3, sprites3 },
            { 4, sprites4 },
            { 5, sprites5 },
            { 6, sprites6 },
            { 7, sprites7 },
            { 8, sprites8 },
            { 9, sprites9 },
            { 10, sprites10 },
            { 11, spritesJ },
            { 12, spritesQ },
            { 13, spritesK }
        };
    }

    void StartGame()
    {
        playerScore = dealerScore = 0;
        playerTurn = true;
        gameOver = false;

        messageText.text = "Nouvelle partie ! Votre score : 0 | Score du croupier : 0";

        imagePlayerCard.sprite = cardPrefab;
        imageDealerCard.sprite = cardPrefab;

        imagePlayerCard.transform.localScale = Vector3.one;
        imageDealerCard.transform.localScale = Vector3.one;

        btnTirer.gameObject.SetActive(true);
        btnStop.gameObject.SetActive(true);
        btnRejouer.gameObject.SetActive(false);
    }

    void PlayTurn()
    {
        if (gameOver || !playerTurn) return;

        int value = RandomCardValue();
        playerScore += GetCardPoints(value);
        Sprite newSprite = GetCardSprite(value);

        StartCoroutine(FlipCard(imagePlayerCard, newSprite));

        messageText.text = $"Votre score total : {playerScore}";

        if (playerScore > 21)
        {
            EndGame();
        }
        else
        {
            playerTurn = false;
            messageText.text += "\nC'est au tour du croupier...";
            StartCoroutine(DealerTurnCoroutine());
        }
    }

    IEnumerator DealerTurnCoroutine()
    {
        yield return new WaitForSeconds(2f);

        if (gameOver) yield break;

        int value = RandomCardValue();
        dealerScore += GetCardPoints(value);
        Sprite newSprite = GetCardSprite(value);

        yield return StartCoroutine(FlipCard(imageDealerCard, newSprite));

        messageText.text = $"Le croupier tire une carte, score total : {dealerScore}";

        yield return new WaitForSeconds(1f);

        if (dealerScore > 21)
        {
            EndGame();
        }
        else
        {
            playerTurn = true;
            messageText.text += "\nC'est à nouveau votre tour !";
        }
    }

    IEnumerator FlipCard(Image cardImage, Sprite newSprite)
    {
        float duration = 0.15f;

        // Réduction de l'échelle X (vers 0)
        for (float t = 0; t < duration; t += Time.deltaTime)
        {
            float scale = Mathf.Lerp(1f, 0f, t / duration);
            cardImage.transform.localScale = new Vector3(scale, 1f, 1f);
            yield return null;
        }

        // Changement de sprite à mi-flip
        cardImage.sprite = newSprite;

        // Expansion de l'échelle X (de 0 à 1)
        for (float t = 0; t < duration; t += Time.deltaTime)
        {
            float scale = Mathf.Lerp(0f, 1f, t / duration);
            cardImage.transform.localScale = new Vector3(scale, 1f, 1f);
            yield return null;
        }

        // Sécurité : reset la scale
        cardImage.transform.localScale = Vector3.one;
    }

    int RandomCardValue()
    {
        int[] values = new int[] { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13 }; // 11=J, 12=Q, 13=K
        return values[Random.Range(0, values.Length)];
    }

    int GetCardPoints(int value)
    {
        if (value >= 11 && value <= 13) return 10;
        return value;
    }

    Sprite GetCardSprite(int value)
    {
        if (!cardSpriteMap.ContainsKey(value)) return null;

        List<Sprite> options = cardSpriteMap[value];
        return options[Random.Range(0, options.Count)];
    }

    void EndGame()
    {
        gameOver = true;

        if (playerScore > 21) messageText.text = "Vous avez dépassé 21 ! Défaite !";
        else if (dealerScore > 21) messageText.text = "Le croupier a dépassé 21 ! Vous gagnez !";
        else if (playerScore > dealerScore) messageText.text = "Vous gagnez !";
        else if (playerScore < dealerScore) messageText.text = "Le croupier gagne !";
        else messageText.text = "Égalité !";

        btnTirer.gameObject.SetActive(false);
        btnStop.gameObject.SetActive(false);
        btnRejouer.gameObject.SetActive(false);

        if (LevelLoader != null)
            LevelLoader.ExitLevel();
    }
}
