using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CharacterLabels : MonoBehaviour
{
    [System.Serializable]
    public class CharacterBanniere
    {
        public SOCharacter character;
        public Image banniere;
        public Sprite banniereSprite;
    }
    [SerializeField] private List<CharacterBanniere> banniereList;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    public void OnChangeCharacter(SOCharacter newCharacter) 
    { 
        CharacterBanniere banniereView = banniereList.Find(x => x.character == newCharacter);
        foreach (CharacterBanniere b in banniereList)
        {
            b.banniere.materialForRendering.SetFloat("_Saturation", 0);
        }
        if (banniereView == null )
        {
            return;
        }
        banniereView.banniere.materialForRendering.SetFloat("_Saturation", 1);
        banniereView.banniere.sprite = banniereView.banniereSprite;
    }
}
