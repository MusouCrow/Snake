using UnityEngine;

namespace Game {
    public class Head : MonoBehaviour {
        private enum Direction {
            up,
            down,
            right,
            left
        }

        private static float DRAG_VALUE = 20;

        public static Body TAIL;

        [SerializeField]
        private Transform joystick;

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
                    this.SetDirection((Direction)i);
                    break;
                }
            }
            
            var x = this.joystick.localPosition.x;
            var y = this.joystick.localPosition.y;

            if (y >= DRAG_VALUE) {
                this.SetDirection(Direction.up);
            }
            else if (y <= -DRAG_VALUE) {
                this.SetDirection(Direction.down);
            }
            else if (x <= -DRAG_VALUE) {
                this.SetDirection(Direction.left);
            }
            else if (x >= DRAG_VALUE) {
                this.SetDirection(Direction.right);
            }
        }

        protected void OnTriggerEnter2D(Collider2D collider) {
            if (collider.tag == "Food") {
                TAIL.Bore();
            }
            else if (collider.tag == "Body") {
                System.IS_OVER = true;
            }
        }

        public void Reset() {
            this.gridPosition.Position = Vector2Int.zero;
            this.direction = Direction.up;
            TAIL = this.body;
        }

        private void SetDirection(Direction next) {
            if (this.direction == next) {
                return;
            }

            bool ban1 = next == Direction.down && this.direction == Direction.up;
            bool ban2 = next == Direction.up && this.direction == Direction.down;
            bool ban3 = next == Direction.left && this.direction == Direction.right;
            bool ban4 = next == Direction.right && this.direction == Direction.left;

            if (!(ban1 || ban2 || ban3 || ban4)) {
                this.direction = next;
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
