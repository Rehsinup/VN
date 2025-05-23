using UnityEngine;

public class PauseInput : MonoBehaviour
{
    [SerializeField] private MenuEchap menu;

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            menu.ToggleMenu();
        }
    }
}