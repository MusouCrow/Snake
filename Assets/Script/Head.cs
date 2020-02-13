// using UnityEngine;
// using LuaInterface;

// namespace Game {
//     public class Head : MonoBehaviour {
//         public enum Direction {
//             up,
//             down,
//             right,
//             left
//         }

//         private static float DRAG_VALUE = 20;

//         public static Body TAIL;

//         [SerializeField]
//         private Transform joystick;

//         public Direction direction;
//         public GridPosition gridPosition;
//         public  Body body;
//         private LuaTable table;

//         // 创建类对象
//         protected LuaTable NewTable() {
//             var func = Lua.state.GetFunction("Head.New");//Food里面的Ctor就会开始工作
            
//             func.BeginPCall();
//             func.Push(this); //把这个物体传过去，就实现绑定啦
//             func.PCall();

//             var table = func.CheckLuaTable();
//             func.EndPCall();

//             return table;
//         }

//         protected void Awake() {
//             Lua.Require("Head"); // 导入脚本
//             this.table = this.NewTable(); // 初始化类对象，相当于这个Food物体将拥有自己的Food.lua了

//             // var func = Lua.state.GetFunction("Head.Awake");

//             // func.BeginPCall();
//             // func.Push(this); //把这个物体传过去，就实现绑定啦
//             // func.PCall();
            
//             // func.EndPCall();

//             System.MoveTickEvent += this.MoveTick;
//         }

//          private void MoveTick() {
//             var func = Lua.state.GetFunction("Head.MoveTick");

//             func.BeginPCall();
//             func.Push(this); //把这个物体传过去，就实现绑定啦
//             func.PCall();
            
//             func.EndPCall();

//         }

//          protected void Update() {
//             var func = Lua.state.GetFunction("Head.Update");

//             func.BeginPCall();
//             func.Push(this); //把这个物体传过去，就实现绑定啦
//             func.Push(joystick);
//             func.Push(DRAG_VALUE);
//             func.PCall();
            
//             func.EndPCall();
// //            
//              }

//         protected void OnTriggerEnter2D(Collider2D collider) {
//             var func = Lua.state.GetFunction("Head.OnTriggerEnter2D");

//             func.BeginPCall();
//             func.Push(this); //把这个物体传过去，就实现绑定啦
//             func.Push(collider);
//             func.PCall();
            
//             func.EndPCall();
               
//              }

//         public void Reset() {
//          var func = Lua.state.GetFunction("Head.Reset");

//             func.BeginPCall();
//             func.Push(this); //把这个物体传过去，就实现绑定啦
//             func.PCall();
            
//             func.EndPCall();
//         }

//         private void SetDirection(Direction next) {
//             var func = Lua.state.GetFunction("Head.Reset");

//             func.BeginPCall();
//             func.Push(this); //把这个物体传过去，就实现绑定啦
//             func.Push(next);
//             func.PCall();
            
//             func.EndPCall();
           
//             }

//     }
// }

        
//=============================================================
    
//原代码
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
