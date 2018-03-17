using System;
using UnityEngine;

namespace Game {
    public class System : MonoBehaviour {
        private static System INSTANCE;
        private const float INTERVAL = 0.2f;
        public static event Action MoveTickEvent;
        
        public static bool IS_PAUSED {
            set {
                INSTANCE.enabled = !value;
            }
        }

        private float timer;

        protected void Awake() {
            INSTANCE = this;
        }

        protected void Update() {
            this.timer += Time.deltaTime;

            if (this.timer >= INTERVAL) {
                System.MoveTickEvent();
                this.timer -= INTERVAL;
            }
        }
    }
}