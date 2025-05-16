using UnityEngine;

public class LevelExitTrigger : MonoBehaviour
{
    private LevelLoader levelLoader;

    public GameObject player1;
    public GameObject player2;
    public GameObject cube1;
    public GameObject cube2;
    public bool player1Ready = false;
    public bool player2Ready = false;


    private void Start()
    {
        levelLoader = FindObjectOfType<LevelLoader>();
    }
    /*private void OnTriggerEnter(Collider player)
    {

        if (cube1 && player1)
        {
            player1Ready = true;
            Debug.Log("Player1 pr�t !");
        }

        if (cube2 && player2)
        {
            player2Ready = true;
            Debug.Log("Player2 pr�t !");
        }

        if (player1Ready && player2Ready)
        {
            Debug.Log("Les deux joueurs sont pr�ts !");
            levelLoader.ExitLevel();
            
        }
    }
  */
        private void OnTriggerEnter (Collider other)
        {
            Debug.Log("Quelqu'un est entr� dans le trigger : " + other.gameObject.name);

            if (other.CompareTag("Player1"))
            {
                Debug.Log("Le joueur est entr� !");
                // Tu peux d�clencher une action ici
            }

        if (other.CompareTag("Player2"))
        {
            Debug.Log("Le joueur est entr� !");
            // Tu peux d�clencher une action ici
        }

        if (other.CompareTag("Cube1"))
        {
            player1Ready = true;
            Debug.Log("Player1 pr�t !");
        }

        if (other.CompareTag("Cube2"))
        {
            player2Ready = true;
            Debug.Log("Player2 pr�t !");
        }
    }
}
