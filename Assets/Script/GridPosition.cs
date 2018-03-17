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

        public Vector2Int Position {
            set {
                this.x = value.x;
                this.y = value.y;
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
            if (this.x > GridField.ASPECT_W) {
                this.x = -GridField.ASPECT_W;
            }
            else if (this.x < -GridField.ASPECT_W) {
                this.x = GridField.ASPECT_W;
            }

            if (this.y > GridField.ASPECT_H) {
                this.y = -GridField.ASPECT_H;
            }
            else if (this.y < -GridField.ASPECT_H) {
                this.y = GridField.ASPECT_H;
            }

            this.transform.position = GridUtility.ToPosition(this.x, this.y);
        }
    }
}

