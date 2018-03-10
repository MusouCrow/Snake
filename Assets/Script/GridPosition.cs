using UnityEngine;

namespace Game {
    public class GridPosition : MonoBehaviour {
        public int X {
            get {
                return this.x;
            }
            set {
                this.x = value;
                this.AdjustPosition();
            }
        }

        public int Y {
            get {
                return this.y;
            }
            set {
                this.y = value;
                this.AdjustPosition();
            }
        }

        [SerializeField]
        private int x;
        [SerializeField]
        private int y;

        protected void Awake() {
            this.AdjustPosition();
        }

        private void AdjustPosition() {
            this.transform.position = GridUtility.ToPosition(this.x, this.y);
        }
    }
}

