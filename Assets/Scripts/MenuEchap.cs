using System.Collections;
using System.Collections.Generic;
using UnityEngine;

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
        if (isPaused == true)
        {
            if (Input.GetKeyDown(KeyCode.Escape))
            {
                gameObject.SetActive(true);
                isPaused = true;
            }
        }
        else
        {
            if (Input.GetKeyDown(KeyCode.Escape))
            {
                gameObject.SetActive(false);
                isPaused = false;
            }
        }

    }
}
