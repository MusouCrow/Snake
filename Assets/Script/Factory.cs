using System.Collections.Generic;
using UnityEngine;

namespace Game {
    public class Factory : MonoBehaviour {
        private static Factory INSTANCE;
        public static int FOOD_COUNT;
        
        [SerializeField]
        private GameObject foodPrefab;
        [SerializeField]
        private int min;
        [SerializeField]
        private int max;

        protected void Awake() {
            INSTANCE = this;
            
            System.MoveTickEvent += this.MoveTick;
        }

        private void Produce() {
            for (int i = this.min; i < this.max; i++) {
                var obj = GameObject.Instantiate(INSTANCE.foodPrefab);
                FOOD_COUNT++;
            }
        }

        private void MoveTick() {
            if (FOOD_COUNT == 0) {
                this.Produce();
            }
        }
    }
}