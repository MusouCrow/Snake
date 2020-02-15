using UnityEngine;
using LuaInterface;

namespace Game {
    public class GridField : MonoBehaviour {
        public const int ASPECT_W = 16;
        public const int ASPECT_H = 9;

        public float width;
        public float height;

        private LuaTable table;

         protected LuaTable NewTable() {
            var func = Lua.state.GetFunction("GridField.New");
            
            func.BeginPCall();
            func.Push(this);
            func.PCall();

            var table = func.CheckLuaTable();
            func.EndPCall();

            return table;
        }

        // protected void Awake() {
        //     Lua.Require("GridField"); // 导入脚本
        //     this.table = this.NewTable(); // 初始化类对象
            
        // }

        // protected void Start() {

        //      Lua.Require("GridField"); // 导入脚本
        //     this.table = this.NewTable(); // 初始化类对象
            
        //      var func = Lua.state.GetFunction("GridField.Start");

        //      func.Call(this.table);
            
        // }

        protected void OnDrawGizmos() {

            this.width = Camera.main.orthographicSize / 9 * 16;
            this.height = Camera.main.orthographicSize;
            for (int i = -ASPECT_W + 1; i <= ASPECT_W - 1; i++) {
                Gizmos.DrawLine(new Vector3(i * GridUtility.SIZE, -this.height, 0), new Vector3(i * GridUtility.SIZE, this.height, 0));
            }
            
            for (int i = -ASPECT_H; i <= ASPECT_H; i++) {
                Gizmos.DrawLine(new Vector3(-this.width, i * GridUtility.SIZE, 0), new Vector3(this.width, i * GridUtility.SIZE, 0));
            }
        }
    }
}

//=============================
// using UnityEngine;

// namespace Game {
//     public class GridField : MonoBehaviour {
//         public const int ASPECT_W = 16;
//         public const int ASPECT_H = 9;

//         private float width;
//         private float height;

//         protected void Start() {
//             this.width = Camera.main.orthographicSize / 9 * 16;
//             this.height = Camera.main.orthographicSize;
//         }

//         protected void OnDrawGizmos() {
//             for (int i = -ASPECT_W + 1; i <= ASPECT_W - 1; i++) {
//                 Gizmos.DrawLine(new Vector3(i * GridUtility.SIZE, -this.height, 0), new Vector3(i * GridUtility.SIZE, this.height, 0));
//             }
            
//             for (int i = -ASPECT_H; i <= ASPECT_H; i++) {
//                 Gizmos.DrawLine(new Vector3(-this.width, i * GridUtility.SIZE, 0), new Vector3(this.width, i * GridUtility.SIZE, 0));
//             }
//         }
//     }
// }