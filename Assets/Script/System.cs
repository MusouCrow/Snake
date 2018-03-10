using System;
using UnityEngine;

namespace Game {
    public class System : MonoBehaviour {
        private static System INSTANCE;
        private const float INTERVAL = 1;
        public static event Action MoveTickEvent;

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