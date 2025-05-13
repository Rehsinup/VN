using System.Collections;
using System.Collections.Generic; 
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening; 

public class CameraSwitcher : MonoBehaviour
{
    public GameObject player1;
    public GameObject player2;
    public Button switchButton; // Bouton pour changer de caméra
    [SerializeField] Transform puzzleTransforms;
    private bool rotated = false;
    [SerializeField] Camera mainCamera;
    public float ZoomSize = 6f;
    private float currentSize;
    private bool CanClick = true;
    public Vector2 CamAnimTime;
    [SerializeField] float verticalOffset;
    [SerializeField] float enterDuration;
    [SerializeField] float playSize = 5f;
    private void Start()
    {
        
        if (player1 != null && player2 != null)
        {
            EnablePlayer(player1, true);
            EnablePlayer(player2, false);
        }
        if (switchButton != null)
        {
            switchButton.onClick.AddListener(SwitchPuzzle); // Ajout du listener sur le bouton
        }

        mainCamera = Camera.main;


        Vector3 basePos = mainCamera.transform.position;
        mainCamera.transform.position += Vector3.up * verticalOffset;
        mainCamera.transform.rotation = Quaternion.Euler(45f, 0f, 0f);
        mainCamera.DOOrthoSize(playSize, enterDuration);
        mainCamera.transform.DOMove(basePos, enterDuration);
        mainCamera.transform.DORotate(Vector3.zero, enterDuration);
        
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.C)) 
        {
            SwitchPuzzle();
        }
    }


    void EnablePlayer(GameObject player, bool isActive) 
    {
        PlayerMovement movement = player.GetComponent<PlayerMovement>(); 
        if (movement != null)
        {
            movement.enabled = isActive;
        }
    }


    void SwitchPuzzle() 
    {
        if (!CanClick) return;
        CanClick = false;
        EnablePlayer(player1, false);
        EnablePlayer(player2, false);
        rotated = !rotated;
        if (rotated)
        {
            puzzleTransforms.DORotate(Vector3.up * 180, 1).OnComplete(SwitchCharacter); 
        }
        else
        {
            puzzleTransforms.DORotate(Vector3.zero, 1).OnComplete(SwitchCharacter);
        }
        mainCamera.DOOrthoSize(ZoomSize, CamAnimTime.x).OnComplete(SwitchCam);
    }

    void SwitchCharacter() 
    {
        CanClick = true;
        EnablePlayer(player1, !rotated);
        EnablePlayer(player2, rotated);
    }

    void SwitchCam()
    {
        mainCamera.DOOrthoSize(playSize, CamAnimTime.y); 
    }
}