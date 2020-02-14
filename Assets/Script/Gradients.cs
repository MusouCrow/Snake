using UnityEngine;
using UnityEngine.UI;
using LuaInterface;

namespace Game {
    public class Gradients : MonoBehaviour {

        private LuaTable table;
        public const float TIME = 1;

        public Graphic graphic;

        public Color originColor;
        public Color targetColor;
        public float timer;

          // 创建类对象
        protected LuaTable NewTable() {
            var func = Lua.state.GetFunction("Gradients.New");
            
            func.BeginPCall();
            func.Push(this);
            func.PCall();

            var table = func.CheckLuaTable();
            func.EndPCall();

            return table;
        }

        protected void Awake() {
            Lua.Require("Gradients"); // 导入脚本
            this.table = this.NewTable(); // 初始化类对象

            var func = Lua.state.GetFunction("Gradients.Awake");
            func.Call(this.table);
        }

        protected void OnEnable() {
            var func = Lua.state.GetFunction("Gradients.OnEnable");
            func.Call(this.table);
        }

        private void Update() {
             var func = Lua.state.GetFunction("Gradients.Update");
            func.Call(this.table);
        }
    }
}


// using UnityEngine;
// using UnityEngine.UI;

// namespace Game {
//     public class Gradients : MonoBehaviour {
//         private const float TIME = 1;

//         private Graphic graphic;

//         private Color originColor;
//         private Color targetColor;
//         private float timer;

//         protected void Awake() {
//             this.graphic = this.GetComponent<Graphic>();

//             this.targetColor = this.graphic.color;
//             this.originColor = this.targetColor;
//             this.originColor.a = 0;
//         }

//         protected void OnEnable() {
//             this.timer = 0;

//             print("enable");
//         }

//         private void Update() {
//             this.timer += Time.deltaTime;
//             this.graphic.color = Color.Lerp(this.originColor, this.targetColor, this.timer / TIME);
        
//             if (this.timer >= TIME) {
//                 this.enabled = false;
//                 print("disable");
//             }
//         }
//     }
// }
