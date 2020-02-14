using UnityEngine;
using LuaInterface;

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
        public int x;
        [SerializeField]
        public int y;

        private LuaTable table;


  // 创建类对象
        protected LuaTable NewTable() {
            var func = Lua.state.GetFunction("GridPosition.New");
            
            func.BeginPCall();
            func.Push(this);
            func.PCall();

            var table = func.CheckLuaTable();
            func.EndPCall();

            return table;
        }

        protected void Awake() {
            Lua.Require("GridPosition"); // 导入脚本
            this.table = this.NewTable(); // 初始化类对象

            var func = Lua.state.GetFunction("GridPosition.Awake");
            func.Call(this.table);
        }
    

        protected void Update() {
            var func = Lua.state.GetFunction("GridPosition.Update");
            func.Call(this.table);
        }
           

        private void AdjustPosition() {
             var func = Lua.state.GetFunction("GridPosition.AdjustPosition");
            func.Call(this.table);
        }
    }
}

//===================================================
// using UnityEngine;

// namespace Game {
//     public class GridPosition : MonoBehaviour {
//         public int X {
//             get {
//                 return this.x;
//             }
//             set {
//                 this.x = value;
//                 this.AdjustPosition();
//             }
//         }

//         public int Y {
//             get {
//                 return this.y;
//             }
//             set {
//                 this.y = value;
//                 this.AdjustPosition();
//             }
//         }

//         public Vector2Int Position {
//             set {
//                 this.x = value.x;
//                 this.y = value.y;
//                 this.AdjustPosition();
//             }
//         }

//         [SerializeField]
//         private int x;
//         [SerializeField]
//         private int y;

//         protected void Awake() {
//             this.AdjustPosition();
//         }

//         protected void Update() {
//             if (Input.GetKeyDown(KeyCode.Space)) {
//                 this.Position = new Vector2Int(this.x, this.y);
//             }
//         }

//         private void AdjustPosition() {
//             if (this.x > GridField.ASPECT_W - 1) {
//                 this.x = -GridField.ASPECT_W;
//             }
//             else if (this.x < -GridField.ASPECT_W) {
//                 this.x = GridField.ASPECT_W - 1;
//             }

//             if (this.y > GridField.ASPECT_H - 1) {
//                 this.y = -GridField.ASPECT_H;
//             }
//             else if (this.y < -GridField.ASPECT_H) {
//                 this.y = GridField.ASPECT_H - 1;
//             }

//             this.transform.position = GridUtility.ToPosition(this.x, this.y);
//         }
//     }
// }


