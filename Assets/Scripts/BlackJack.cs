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
    private InkVarMoney inkVarMoney;

    [Header("Cartes par valeur")]
    public List<Sprite> sprites2, sprites3, sprites4, sprites5, sprites6,
                        sprites7, sprites8, sprites9, sprites10,
                        spritesJ, spritesQ, spritesK;

    private Dictionary<int, List<Sprite>> cardSpriteMap;

    int playerScore = 0, dealerScore = 0;
    bool playerTurn = true, gameOver = false;
    int playerDrawCount = 0;

    private LevelLoader LevelLoader;
    private AudioManager audioManager;

    [Header("Sound")]
    [SerializeField] private string shakeSoundID1 = "LvlWin";
    [SerializeField] private string shakeSoundID2 = "Lose";

    void Start()
    {
        audioManager = FindObjectOfType<AudioManager>();
        inkVarMoney = FindObjectOfType<InkVarMoney>();
        LevelLoader = FindObjectOfType<LevelLoader>();

        btnTirer.onClick.AddListener(PlayTurn);
        btnStop.onClick.AddListener(HandleStop);
        btnRejouer.onClick.AddListener(StartGame);

        InitCardSpriteMap();
        StartGame();
    }

    void InitCardSpriteMap()
    {
        cardSpriteMap = new Dictionary<int, List<Sprite>> {
            { 2, sprites2 }, { 3, sprites3 }, { 4, sprites4 }, { 5, sprites5 },
            { 6, sprites6 }, { 7, sprites7 }, { 8, sprites8 }, { 9, sprites9 },
            { 10, sprites10 }, { 11, spritesJ }, { 12, spritesQ }, { 13, spritesK }
        };
    }

    void StartGame()
    {
        playerScore = dealerScore = 0;
        playerDrawCount = 0;
        playerTurn = true;
        gameOver = false;

        messageText.text = "Nouvelle partie ! Votre score : 0 | Score du croupier : 0";

        imagePlayerCard.sprite = cardPrefab;
        imageDealerCard.sprite = cardPrefab;
        imagePlayerCard.transform.localScale = Vector3.one;
        imageDealerCard.transform.localScale = Vector3.one;

        btnTirer.gameObject.SetActive(true);
        btnStop.gameObject.SetActive(true);
        btnStop.interactable = false; // Inactif tant que < 2 cartes tirées
        btnRejouer.gameObject.SetActive(false);
    }

    void PlayTurn()
    {
        if (!playerTurn || gameOver) return;

        int value = RandomCardValue();
        playerScore += GetCardPoints(value);
        playerDrawCount++;

        Sprite newSprite = GetCardSprite(value);
        StartCoroutine(FlipCard(imagePlayerCard, newSprite));

        messageText.text = $"Votre score total : {playerScore}";

        if (playerDrawCount >= 2)
            btnStop.interactable = true;

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

    void HandleStop()
    {
        if (gameOver) return;

        if (playerDrawCount < 2)
        {
            messageText.text = "Vous devez tirer au moins deux cartes avant de vous arrêter !";
            return;
        }

        EndGame();
    }

    IEnumerator DealerTurnCoroutine()
    {
        yield return new WaitForSeconds(2f);

        if (gameOver) yield break;

        int value = RandomCardValue();
        dealerScore += GetCardPoints(value);
        Sprite newSprite = GetCardSprite(value);

        yield return StartCoroutine(FlipCard(imageDealerCard, newSprite));
        messageText.text = $"Le croupier tire une carte, score : {dealerScore}";

        yield return new WaitForSeconds(1f);

        if (dealerScore > 21)
        {
            EndGame();
        }
        else
        {
            playerTurn = true;
            messageText.text += "\nC'est à vous !";
        }
    }

    IEnumerator FlipCard(Image cardImage, Sprite newSprite)
    {
        float duration = 0.15f;

        for (float t = 0; t < duration; t += Time.deltaTime)
        {
            float scale = Mathf.Lerp(1f, 0f, t / duration);
            cardImage.transform.localScale = new Vector3(scale, 1f, 1f);
            yield return null;
        }

        cardImage.sprite = newSprite;

        for (float t = 0; t < duration; t += Time.deltaTime)
        {
            float scale = Mathf.Lerp(0f, 1f, t / duration);
            cardImage.transform.localScale = new Vector3(scale, 1f, 1f);
            yield return null;
        }

        cardImage.transform.localScale = Vector3.one;
    }

    int RandomCardValue()
    {
        int[] values = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13 };
        return values[Random.Range(0, values.Length)];
    }

    int GetCardPoints(int value)
    {
        return (value >= 11 && value <= 13) ? 10 : value;
    }

    Sprite GetCardSprite(int value)
    {
        if (!cardSpriteMap.ContainsKey(value)) return null;
        List<Sprite> options = cardSpriteMap[value];
        return options[Random.Range(0, options.Count)];
    }

    void EndGame()
    {
        if (gameOver) return;
        gameOver = true;

        string result;
        if (playerScore > 21)
        {
            result = "Vous avez dépassé 21 ! Défaite !";
            inkVarMoney.SetMoney(-50, false);
            AudioManager.instance?.PlaySound(shakeSoundID2);
        }
        else if (dealerScore > 21)
        {
            result = "Le croupier a dépassé 21 ! Vous gagnez !";
            inkVarMoney.SetMoney(+50, true);
            AudioManager.instance?.PlaySound(shakeSoundID1);
        }
        else if (playerScore > dealerScore)
        {
            result = "Vous gagnez !";
            inkVarMoney.SetMoney(+50, true);
        }
        else if (playerScore < dealerScore)
        {
            result = "Le croupier gagne !";
            inkVarMoney.SetMoney(-50, false);
        }
        else
        {
            result = "Égalité !";
        }

        messageText.text = result;

        btnTirer.gameObject.SetActive(false);
        btnStop.gameObject.SetActive(false);
        btnRejouer.gameObject.SetActive(false);

        LevelLoader?.ExitLevel();
    }
}
