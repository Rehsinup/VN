using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey(KeyCode.D)) // v�rifier si la touche A est enfonc�e
        {
            GetComponent<Rigidbody>().AddRelativeForce(new Vector3(0, 0, 1000f) * Time.deltaTime);
        }
        if (Input.GetKey(KeyCode.A)) // v�rifier si la touche D est enfonc�e
        {
            GetComponent<Rigidbody>().AddRelativeForce(new Vector3(0, 0, -1000f) * Time.deltaTime); ;
        }
        if (Input.GetKey(KeyCode.S)) // v�rifier si la touche W est enfonc�e
        {
            GetComponent<Rigidbody>().AddRelativeForce(new Vector3(1000f, 0, 0) * Time.deltaTime);
        }
        if (Input.GetKey(KeyCode.W)) // v�rifier si la touche S est enfonc�e
        {
            GetComponent<Rigidbody>().AddRelativeForce(new Vector3(-1000f, 0, 0) * Time.deltaTime);
        }
    }
}
