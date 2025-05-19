using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    private Rigidbody rb;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
        Debug.Log(Camera.main.transform.position);
    }

    void Update()
    {
        Vector3 moveDirection = Vector3.zero;

        if (Input.GetKey(KeyCode.W))
        {
            moveDirection += new Vector3(0, 10, 0);
        }
        if (Input.GetKey(KeyCode.S))
        {
            moveDirection += new Vector3(0, -10, 0);
        }
        if (Input.GetKey(KeyCode.D))
        {
            moveDirection += new Vector3(10, 0, 0);
        }
        if (Input.GetKey(KeyCode.A))
        {
            moveDirection += new Vector3(-10, 0, 0);
        }

        rb.velocity = moveDirection * 1f; // Applique la vitesse

        if (moveDirection == Vector3.zero)
        {
            rb.velocity = Vector3.zero; // Stop net quand aucune touche n'est pressée
        }
    }
}
