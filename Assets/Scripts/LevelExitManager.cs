using UnityEngine;

public class LevelExitManager : MonoBehaviour
{
    private bool player1Ready = false;
    private bool player2Ready = false;
    private LevelLoader levelLoader;

    private void Start()
    {
        levelLoader = FindObjectOfType<LevelLoader>();
    }
    public void MarkPlayerReady(string tag)
    {
        if (tag == "Player1")
        {
            player1Ready = true;
        }
        else if (tag == "Player2")
        {
            player2Ready = true;
        }

        if (player1Ready && player2Ready)
        {
           levelLoader.ExitLevel();
        }
    }
}
