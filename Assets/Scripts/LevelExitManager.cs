using System.Runtime.CompilerServices;
using UnityEngine;

public class LevelExitManager : MonoBehaviour
{
    private bool player1Ready = false;
    private bool player2Ready = false;
    private LevelLoader levelLoader;
    private AudioManager audioManager;

    [Header("Sound")]
    [SerializeField] private string shakeSoundID1 = "lvlWin";
    private void Start()
    {
        audioManager = FindObjectOfType<AudioManager>();
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
            if (AudioManager.instance != null)
            {
                AudioManager.instance.PlaySound(shakeSoundID1);
            }
            levelLoader.ExitLevel();
        }
    }
}
