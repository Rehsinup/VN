using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class StartScript : MonoBehaviour // Renamed the class to avoid conflict with the method name
{
    [SerializeField] private Button startingButton;
    [SerializeField] private Button settingsButton;
    [SerializeField] private Button leaveButton;
    public LevelLoader levelLoader;


    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    private void Awake()
    {
        startingButton.onClick.AddListener(OnStartButtonClicked);
        settingsButton.onClick.AddListener(OnSettingsButtonClicked);
        leaveButton.onClick.AddListener(OnLeaveButtonClicked);
    }
    public void LoadScene(string sceneName)
    {
        SceneManager.LoadScene(sceneName);
    }
    private void OnStartButtonClicked()
    {
        Debug.Log("Start button clicked");
        LoadScene("Intro");
    }
    private void OnSettingsButtonClicked()
    {
        Debug.Log("Settings button clicked");
        // Implement settings functionality here
    }
    private void OnLeaveButtonClicked()
    {
        Debug.Log("Leave button clicked");
        Application.Quit();
    }
}
