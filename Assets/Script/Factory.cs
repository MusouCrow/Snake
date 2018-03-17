using System.Collections.Generic;
using UnityEngine;

namespace Game {
    public class Factory : MonoBehaviour {
        private static Factory INSTANCE;

        public static int FoodCount {
            get {
                return INSTANCE.foodCount;
            }
            set {
                INSTANCE.foodCount = value;
                System.AdjustInterval();
            }
        }
        
        [SerializeField]
        private GameObject foodPrefab;
        [SerializeField]
        private int min;
        [SerializeField]
        private int max;

        private int foodCount;

        protected void Awake() {
            INSTANCE = this;
            
            System.MoveTickEvent += this.MoveTick;
        }

        private void Produce() {
            for (int i = this.min; i < this.max; i++) {
                var obj = GameObject.Instantiate(INSTANCE.foodPrefab);
                FoodCount++;
            }
        }

        private void MoveTick() {
            if (FoodCount == 0) {
                this.Produce();
            }
        }
    }
}