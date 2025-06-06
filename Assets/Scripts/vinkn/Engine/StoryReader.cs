using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using UnityEngine.Events;

namespace vinkn
{
    public class StoryReader : MonoBehaviour
    {
        public enum StoryReadState { NONE, READ, WAIT, RESUME };

        [System.Serializable] public class StoryEventTrigger : UnityEvent<StoryReader, object[]> { }
        [System.Serializable] public class VariableEventTrigger : UnityEvent<string, object> { }
        [System.Serializable]
        public class EventLink
        {
            public string eventName;
            public StoryEventTrigger onTrigger;
        }

        [System.Serializable]
        public class VariableLink
        {
            public string variableName;
            public VariableEventTrigger onTrigger;
        }
        public Story story { get; private set; }

        [Header("Configuration")]
        [SerializeField] bool startOnAwake;
        [SerializeField] TextAsset storyAsset;
        [SerializeField] List<EventLink> eventList;
        [SerializeField] List<VariableLink> variableList;

        [Header("Events")]
        [SerializeField] UnityEvent<string, List<string>> OnNextLine;
        [SerializeField] UnityEvent<List<Choice>> OnChoices;
        [SerializeField] UnityEvent OnStoryEnd;

        public StoryReadState state { get; private set; }

        // R�f�rence � LevelLoader pour charger une sc�ne
        private LevelLoader levelLoader;
        private VFXLoader vfxLoader;

        // Start is called before the first frame update

        void Awake()
        {
            if (storyAsset == null)
            {
                gameObject.SetActive(false);
                throw new UnassignedReferenceException("storyAsset is empty");
            }

            story = new Story(storyAsset.text);
            state = StoryReadState.READ;

            // Lier les fonctions externes
            foreach (EventLink e in eventList)
            {
                story.BindExternalFunctionGeneral(e.eventName, (object[] args) => { e.onTrigger?.Invoke(this, args); return null; }, false);
            }

            foreach (VariableLink v in variableList)
            {
                story.ObserveVariable(v.variableName, (string varName, object varValue) => v.onTrigger?.Invoke(varName, varValue));
            }

            // Lier la fonction externe LoadScene
            story.BindExternalFunction("LoadVFX", (string sceneName) =>
            {
                if (vfxLoader == null)
                    vfxLoader = FindObjectOfType<VFXLoader>();

                if (vfxLoader != null)
                {
                    vfxLoader.ImportLevel(sceneName);
                }
                else
                {
                    Debug.LogError("VFXLoader not found!");
                }
            });

            story.BindExternalFunction("LoadScene", (string sceneName) =>
            {
                if (levelLoader == null)
                    levelLoader = FindObjectOfType<LevelLoader>(); // Trouver le LevelLoader si pas encore fait

                if (levelLoader != null)
                {
                    if (story.currentTags.Contains("Puzzle"))
                        levelLoader.ImportLevel(sceneName, true);
                    else
                        levelLoader.ImportLevel(sceneName, false);
                }
                else
                {
                    Debug.LogError("LevelLoader not found!");
                }


            });

        }

        private void OnEnable()
        {
        }

        private void OnDisable()
        {
        }

        protected virtual IEnumerator Start()
        {
            yield return null;

            if (startOnAwake)
                Next();
        }

        public virtual void Next()
        {
            if (story.canContinue)
            {
                string content = story.Continue().Trim();

                if (string.IsNullOrEmpty(content))
                {
                    Next();
                    return;
                }

                OnNextLine?.Invoke(content, story.currentTags);
            }
            else if (story.currentChoices?.Count > 0)
            {
                OnChoices?.Invoke(story.currentChoices);
            }
            else
            {
                OnStoryEnd?.Invoke();
            }
        }

        public virtual void SelectChoice(Choice choice)
        {
            story.ChooseChoiceIndex(choice.index);
            Next();
        }

        public void CancelWait()
        {
            if (state == StoryReadState.WAIT)
            {
                state = StoryReadState.READ;
            }
        }

        public void ThenWaitPlayer()
        {
            state = StoryReadState.WAIT;
        }

        public void SetStory(TextAsset asset)
        {
            storyAsset = asset;
            story = new Story(asset.text);
        }
    }


}

