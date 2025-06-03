using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MenuEchap : MonoBehaviour
{
    [SerializeField] GameObject Resume;
    [SerializeField] GameObject Quit;
    [SerializeField] GameObject Restart;
    private bool isPaused = false;
    // Start is called before the first frame update
    void Start()
    {
        isPaused = false;
    }

    // Update is called once per frame
    void Update()
    {
 
    }

    public void ResumeGame()
    {
        gameObject.SetActive(false);
        isPaused = false;
    }
    public void RestartGame()
    {
        // Add your restart game logic here
        // For example, you might want to reload the current scene
        UnityEngine.SceneManagement.SceneManager.LoadScene(UnityEngine.SceneManagement.SceneManager.GetActiveScene().name);
    }

    public void QuitGame()
    {
        // Add your quit game logic here
        // For example, you might want to load the main menu scene
        UnityEngine.SceneManagement.SceneManager.LoadScene("Start");
    }



    public void ShowMenu()
    {
        gameObject.SetActive(true);
        isPaused = true;
    }

    public void HideMenu()
    {
        gameObject.SetActive(false);
        isPaused = false;
    }

    public void ToggleMenu()
    {
        if (isPaused)
            HideMenu();
        else
            ShowMenu();
    }
}