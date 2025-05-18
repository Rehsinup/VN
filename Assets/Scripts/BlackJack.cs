using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;  // Ajout pour TextMeshPro

public class BlackjackGame : MonoBehaviour
{
    public Button btnTirer, btnStop, btnRejouer;
    public TMP_Text messageText; // Texte TMP pour afficher les messages

    int playerScore = 0, dealerScore = 0;
    bool playerTurn = true, gameOver = false;
    private LevelLoader LevelLoader;

    void Start()
    {
        btnTirer.onClick.AddListener(() => PlayTurn(0)); // 0 = carte normale
        btnStop.onClick.AddListener(EndGame);
        btnRejouer.onClick.AddListener(StartGame);
        StartGame();
        LevelLoader = FindObjectOfType<LevelLoader>();
    }

    void StartGame()
    {
        playerScore = dealerScore = 0;
        playerTurn = true;
        gameOver = false;

        messageText.text = "Nouvelle partie ! Votre score : 0 | Score du croupier : 0";

        btnTirer.gameObject.SetActive(true);
        btnStop.gameObject.SetActive(true);
        btnRejouer.gameObject.SetActive(false);
    }

    void PlayTurn(int aceValue)
    {
        if (gameOver || !playerTurn) return;

        int card = aceValue == 0 ? RandomCard() : aceValue;
        playerScore += card;

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
        yield return new WaitForSeconds(2f); // petite pause pour effet

        if (gameOver) yield break;

        int card = RandomCard();
        dealerScore += card;

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

    int RandomCard() => new int[] { 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10 }[Random.Range(0, 12)];

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
        btnRejouer.gameObject.SetActive(true);

        if (LevelLoader != null)
            LevelLoader.ExitLevel();
    }
}
