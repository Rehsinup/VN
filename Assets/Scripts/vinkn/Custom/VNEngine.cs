using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace vinkn
{
    public class VNEngine : MonoBehaviour
    {
        [SerializeField] List<Character> characters;
        [SerializeField] List<SOCharacter> charactersDefinitions;
        [SerializeField] List<EDisplayable> backgrounds;
        [SerializeField] List<DisplayAnchor> anchors;
        [SerializeField] Animator transitionAnim;
        [SerializeField] Canvas AnimCanvas;

        protected EDisplayable currentBg { get; set; }

        // Nouveaux champs pour g�rer l'�tat de la narration
        private bool isNarrationActive = true; // Par d�faut, la narration est active
        public GameObject narrationCanvas; // Le canvas de narration ou autre UI li� � la narration

        // Start is called before the first frame update
        void Awake()
        {
            currentBg = null;
        }

        // Ajouter la m�thode pour reprendre la narration
        public void ResumeNarration()
        {
            if (narrationCanvas != null)
            {
                narrationCanvas.SetActive(true); // R�active le canvas de narration
            }

            isNarrationActive = true; // La narration est maintenant active
            Debug.Log("Narration reprise.");
        }

        public void Add(DisplayAnchor a)
        {
            if (a && !anchors.Contains(a))
                anchors.Add(a);
        }

        public void AddCharacter(Character c)
        {
            if (c != null && !characters.Contains(c))
            {
                if (c.details != null)
                    charactersDefinitions.Add(c.details);
                else
                    Debug.LogError("Details not found for '" + c.name + "'");

                characters.Add(c);
            }
        }

        public void AddBackground(EDisplayable sb)
        {
            if (sb != null && !backgrounds.Contains(sb))
                backgrounds.Add(sb);
        }

        public void Add(EDisplayable item, InkObjectType type)
        {
            switch (type)
            {
                case InkObjectType.BACKGROUND:
                    if (!backgrounds.Contains(item))
                        backgrounds.Add(item);
                    break;
                case InkObjectType.CHARACTER:
                    if (!characters.Contains((Character)item))
                        characters.Add((Character)item);
                    break;
            }
        }

        public DisplayAnchor FindAnchor(string objName)
        {
            objName = objName.ToLower();
            DisplayAnchor a = anchors.Find(x => (x?.tagID.ToLower().Equals(objName) ?? false));
            if (a == null)
                throw new UnassignedReferenceException("'" + objName + "' anchor not found");

            return a;
        }

        public EDisplayable FindBackground(string bg)
        {
            bg = bg.ToLower();

            EDisplayable bgObj = backgrounds.Find(x => (x?.tagID.ToLower().Equals(bg) ?? false));

            if (bgObj == null)
                throw new UnassignedReferenceException("'" + bg + "' background not found");

            return bgObj;
        }

        public SOCharacter FindCharacterDefinition(string id)
        {
            id = id.ToLower();
            return charactersDefinitions.Find(x => x.tag.ToLower().Equals(id));
        }

        public Character FindCharacter(string id)
        {
            id = id.ToLower();
            Character c = characters.Find(x => (x?.tagID.ToLower().Equals(id) ?? false));

            if (c == null)
                throw new UnassignedReferenceException("'" + id + "' character not found");

            return c;
        }

        public virtual void FadeToBackground(string name, float duration)
        {
            if (currentBg != null)
            {
                currentBg.Fade(0, duration);
            }
            StartCoroutine(QuitterBG());
            currentBg = FindBackground(name);
            currentBg.Fade(1, duration);
        }
             IEnumerator QuitterBG()
        {
            AnimCanvas.sortingOrder = 5;
            transitionAnim.SetTrigger("BgOut");
            yield return new WaitForSeconds(1f);
            transitionAnim.SetTrigger("BgIn");
            yield return new WaitForSeconds(1f);
            AnimCanvas.sortingOrder = 1;
        }

        public virtual void FlipXChar(string item)
        {
            Character c = FindCharacter(item);
            c?.FlipX();
        }

        public virtual void FlipYChar(string item)
        {
            Character c = FindCharacter(item);
            c?.FlipY();
        }

        public virtual void DisplayChar(string item, bool display)
        {
            Character c = FindCharacter(item);

            if (display)
                c.Show();
            else
                c.Hide();
        }

        public virtual void DisplayChar(string item, bool display, float duration)
        {
            Character c = FindCharacter(item);

            if (display)
                c?.Fade(1, duration);
            else
                c?.Fade(0, duration);
        }

        public void SetEmotion(string character, string name)
        {
            Character c = FindCharacter(character);
            c?.ChangeContent(name);
        }

        public void MoveTo(string character, string name, float duration)
        {
            Character c = FindCharacter(character);
            DisplayAnchor a = FindAnchor(name);

            if (duration > 0)
                c.Move(a.transform.position, duration);
            else
                c.transform.position = a.transform.position;
        }

        // G�rer la pause de la narration
        public void PauseNarration()
        {
            if (narrationCanvas != null)
            {
                narrationCanvas.SetActive(false); // D�sactive le canvas de narration
            }

            isNarrationActive = false; // La narration est mise en pause
            Debug.Log("Narration mise en pause.");
        }

        public bool IsNarrationActive()
        {
            return isNarrationActive;
        }
    }
}
