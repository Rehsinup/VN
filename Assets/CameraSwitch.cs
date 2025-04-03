using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI; // Ajout pour utiliser les boutons UI
using DG.Tweening;

public class CameraSwitcher : MonoBehaviour
{
    public Camera camera1;
    public Camera camera2;
    public GameObject player1;
    public GameObject player2;
    public Button switchButton; // Bouton pour changer de caméra
    [SerializeField] Transform puzzleTransforms;
    private bool rotated = false;
    private void Start()
    {
        if (camera1 != null && camera2 != null)
        {
            camera1.enabled = true;
            camera2.enabled = false;
        }
        if (player1 != null && player2 != null)
        {
            EnablePlayer(player1, true);
            EnablePlayer(player2, false);
        }
        if (switchButton != null)
        {
            switchButton.onClick.AddListener(SwitchCamera); // Ajout du listener sur le bouton
        }
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.C)) // Change "C" si tu veux une autre touche
        {
            SwitchPuzzle();
        }
    }

    void SwitchCamera()
    {
        if (camera1 != null && camera2 != null && player1 != null && player2 != null)
        {
            bool isCamera1Active = camera1.enabled;
            camera1.enabled = !isCamera1Active;
            camera2.enabled = isCamera1Active;

            EnablePlayer(player1, !isCamera1Active);
            EnablePlayer(player2, isCamera1Active);
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
    }

    void SwitchCharacter()
    {
        EnablePlayer(player1, !rotated);
        EnablePlayer(player2, rotated);
    }
}