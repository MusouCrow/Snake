using UnityEngine;

namespace Game {
    public class Head : MonoBehaviour {
        private enum Direction {
            up,
            down,
            right,
            left
        }

        public static Body TAIL;

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
                    var next = (Direction)i;
                    bool ban1 = next == Direction.down && this.direction == Direction.up;
                    bool ban2 = next == Direction.up && this.direction == Direction.down;
                    bool ban3 = next == Direction.left && this.direction == Direction.right;
                    bool ban4 = next == Direction.right && this.direction == Direction.left;

                    if (!(ban1 || ban2 || ban3 || ban4)) {
                        this.direction = (Direction)i;
                    }

                    break;
                }
            }
        }

        protected void OnTriggerEnter2D(Collider2D collider) {
            if (collider.tag == "Food") {
                TAIL.Bore();
            }
            else if (collider.tag == "Body") {
                print(collider.name);
                print("body ," + collider.transform.position.x + "," + collider.transform.position.y);
                print("head ," + this.transform.position.x + "," + this.transform.position.y);
                print("Game Over!");
                System.IS_PAUSED = true;
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
