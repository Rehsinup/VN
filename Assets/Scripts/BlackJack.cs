using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BlackjackGame : MonoBehaviour
{
    public Button btnTirer, btnStop, btnRejouer;
    int playerScore = 0, dealerScore = 0;
    bool playerTurn = true, gameOver = false;
    private Button Quitter; // Bouton pour quitter le jeu
    private LevelLoader LevelLoader; // Référence au script LevelLoader
    [SerializeField] private GameObject QuitterButton; // Préfabriqué pour le bouton Quitter

    void Start()
    {
        btnTirer.onClick.AddListener(() => PlayTurn(0)); // 0 signifie que c'est une carte normale
        btnStop.onClick.AddListener(EndGame); // Fin de la partie, arrêt du croupier
        btnRejouer.onClick.AddListener(StartGame);
        StartGame();
        LevelLoader = FindObjectOfType<LevelLoader>();
    }

    void StartGame()
    {
        playerScore = dealerScore = 0;
        playerTurn = true;
        gameOver = false;
        Debug.Log("Nouvelle partie ! Votre score : 0 | Score du croupier : 0");

        // Réinitialiser les boutons pour jouer une nouvelle partie
        btnTirer.gameObject.SetActive(true);
        btnStop.gameObject.SetActive(true);
        btnRejouer.gameObject.SetActive(false);
    }

    void PlayTurn(int aceValue)
    {
        if (gameOver || !playerTurn) return;

        // Si on joue un As, on ajoute sa valeur
        int card = aceValue == 0 ? RandomCard() : aceValue;
        playerScore += card;
        Debug.Log($"Votre score total : {playerScore}");

        // Vérifier si le joueur dépasse 21
        if (playerScore > 21)
        {
            EndGame();
        }
        else
        {
            // Passer au tour du croupier
            playerTurn = false;
            Debug.Log("C'est au tour du croupier...");
            DealerTurn();
        }
    }

    void DealerTurn()
    {
        if (gameOver) return;

        // Le croupier tire une carte
        int card = RandomCard();
        dealerScore += card;
        Debug.Log($"Le croupier tire une carte, score total : {dealerScore}");

        // Vérifier si le croupier dépasse 21
        if (dealerScore > 21)
        {
            EndGame();
        }
        else
        {
            // Passer à nouveau au joueur
            playerTurn = true;
            Debug.Log("C'est à nouveau votre tour !");
        }
    }

    int RandomCard() => new int[] { 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10 }[Random.Range(0, 12)];

    void EndGame()
    {
        gameOver = true;

        // Afficher les résultats
        if (playerScore > 21) Debug.Log("Vous avez dépassé 21 ! Défaite !");
        else if (dealerScore > 21) Debug.Log("Le croupier a dépassé 21 ! Vous gagnez !");
        else if (playerScore > dealerScore) Debug.Log("Vous gagnez !");
        else if (playerScore < dealerScore) Debug.Log("Le croupier gagne !");
        else Debug.Log("Égalité !");
        LevelLoader.ExitLevel();
    }
}
