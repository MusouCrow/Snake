using System;
using UnityEngine;

namespace Game {
    public class System : MonoBehaviour {
        private static System INSTANCE;
        private static GameObject CANVAS;
        private static float INTERVAL;
        public static event Action MoveTickEvent;
        
        public static bool IS_OVER {
            set {
                INSTANCE.enabled = !value;
                CANVAS.SetActive(value);

                if (value) {
                    INSTANCE.timer = 0;
                }
            }
        }

        public static float AdjustInterval() {
            return INTERVAL = 29f / (9f * Body.Count + 20f);
        }

        private float timer;

        protected void Awake() {
            INSTANCE = this;
            CANVAS = GameObject.Find("Canvas");
            CANVAS.SetActive(false);

            if (Application.platform != RuntimePlatform.Android) {
                var canvas2 = GameObject.Find("Canvas2");
                canvas2.SetActive(false);
            }
        }

        protected void Update() {
            this.timer += Time.deltaTime;

            if (this.timer >= INTERVAL) {
                System.MoveTickEvent();
                this.timer -= INTERVAL;
            }
        }

        protected void OnGUI() {
            GUILayout.Label(INTERVAL.ToString());
        }
    }
}