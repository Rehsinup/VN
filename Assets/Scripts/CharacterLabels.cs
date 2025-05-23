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
            b.banniere.materialForRendering.SetFloat("_Alpha", 0);

            // Sprite : SpriteRenderer (personnage)
            b.characterSprite.material.SetFloat("_Saturation", 1);

            // remettre l'ordre par défaut
            b.characterSprite.sortingOrder = 4;
        }

        if (banniereView == null)
        {
            return;
        }

        banniereView.banniere.materialForRendering.SetFloat("_Alpha", 1);
        banniereView.characterSprite.material.SetFloat("_Saturation", 1);
        banniereView.characterSprite.sortingOrder = 11; // mettre le perso actif en avant
        banniereView.banniere.sprite = banniereView.banniereSprite;
    }
}
