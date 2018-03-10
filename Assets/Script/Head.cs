using UnityEngine;

namespace Game {
    public class Head : MonoBehaviour {
        private enum Direction {
            up,
            down,
            right,
            left
        }

        private Direction direction;
        private GridPosition gridPosition;
        private Body body;

        protected void Awake() {
            this.body = this.GetComponent<Body>();
            System.MoveTickEvent += this.MoveTick;

            this.gridPosition = this.GetComponent<GridPosition>();
        }

        protected void Update() {
            for (int i = 0; i < 4; i++) {
                if (Input.GetKeyDown((KeyCode)(i + KeyCode.UpArrow))) {
                    this.direction = (Direction)i;
                    break;
                }
            }
        }

        private void MoveTick() {
            this.body.laterPosition = this.transform.position;

            if (this.direction == Direction.up) {
                this.gridPosition.Y += 1;
            }
            else if (this.direction == Direction.down) {
                this.gridPosition.Y -= 1;
            }
            else if (this.direction == Direction.left) {
                this.gridPosition.X -= 1;
            }
            else if (this.direction == Direction.right) {
                this.gridPosition.X += 1;
            }
        }
    }
}
