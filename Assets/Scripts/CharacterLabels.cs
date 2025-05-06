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
        public SpriteRenderer characterSprite;
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
            // UI : Image (bannière)
            b.banniere.materialForRendering.SetFloat("_Saturation", 0);

            // Sprite : SpriteRenderer (personnage)
            b.characterSprite.material.SetFloat("_Saturation", 0.5f);
        }

        if (banniereView == null)
        {
            return;
        }

        banniereView.banniere.materialForRendering.SetFloat("_Saturation", 1);
        banniereView.characterSprite.material.SetFloat("_Saturation", 1);
        banniereView.banniere.sprite = banniereView.banniereSprite;
    }
}
