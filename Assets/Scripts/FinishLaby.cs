using UnityEngine;

public class LevelExitTrigger : MonoBehaviour
{
    public LevelLoader levelLoader;

    private bool player1Ready = false;
    private bool player2Ready = false;

    private void OnTriggerEnter(Collider other)
    {
        if (gameObject.name == "Cube1" && other.gameObject.name == "Player1")
        {
            player1Ready = true;
            Debug.Log("Player1 pr�t !");
        }

        if (gameObject.name == "Cube2" && other.gameObject.name == "Player2")
        {
            player2Ready = true;
            Debug.Log("Player2 pr�t !");
        }

        if (player1Ready && player2Ready)
        {
            Debug.Log("Les deux joueurs sont pr�ts. D�chargement du niveau...");
            if (levelLoader != null)
            {
                levelLoader.ExitLevel();
            }
            else
            {
                Debug.LogWarning("LevelLoader non assign� !");
            }
        }
    }
}
