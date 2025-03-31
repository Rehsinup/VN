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
        if (Input.GetKey(KeyCode.D)) // vérifier si la touche A est enfoncée
        {
            GetComponent<Rigidbody>().AddRelativeForce(new Vector3(0, 0, 1000f) * Time.deltaTime);
        }
        if (Input.GetKey(KeyCode.A)) // vérifier si la touche D est enfoncée
        {
            GetComponent<Rigidbody>().AddRelativeForce(new Vector3(0, 0, -1000f) * Time.deltaTime); ;
        }
        if (Input.GetKey(KeyCode.S)) // vérifier si la touche W est enfoncée
        {
            GetComponent<Rigidbody>().AddRelativeForce(new Vector3(1000f, 0, 0) * Time.deltaTime);
        }
        if (Input.GetKey(KeyCode.W)) // vérifier si la touche S est enfoncée
        {
            GetComponent<Rigidbody>().AddRelativeForce(new Vector3(-1000f, 0, 0) * Time.deltaTime);
        }
    }
}
