using System;
using UnityEngine;
using LuaInterface;

namespace Game {
    public class System : MonoBehaviour {
        private LuaTable table;
        private static System INSTANCE;
        public static GameObject CANVAS;
        public static float INTERVAL;
        public static event Action MoveTickEvent;
        
        public static bool IS_OVER {
            set {
                INSTANCE.enabled = !value;
                CANVAS.SetActive(value);

                if (value) {
                    INSTANCE.timer = 0;
                }
            }
        }

          // 创建类对象
        protected LuaTable NewTable() {
            var func = Lua.state.GetFunction("System.New");
            
            func.BeginPCall();
            func.Push(this);
            func.PCall();

            var table = func.CheckLuaTable();
            func.EndPCall();

            return table;
        }

        protected void Awake() {
            Lua.Init();
            Lua.Require("Main"); // 初始化脚本

            Lua.Require("System"); // 导入脚本
            this.table = this.NewTable(); // 初始化类对象

            INSTANCE = this;
            var func = Lua.state.GetFunction("System.Awake");
            func.Call(this.table);
        }

        public static void AdjustInterval() {
            var func = Lua.state.GetFunction("System.AdjustInterval");
            func.Call();
        }

        public float timer;
        

        protected void Update() {
   

            var func = Lua.state.GetFunction("System.Update");
            
            func.BeginPCall();
            func.Push(this.table);
            func.PCall();

            bool ready = func.CheckBoolean();
            func.EndPCall();

            if(ready)
            System.MoveTickEvent();

            AdjustInterval();
        }

        protected void LateUpdate() {
            Lua.Update();
        }

        protected void OnGUI() {
            GUILayout.Label(INTERVAL.ToString());
        }
    }
}
//============================================
// using System;
// using UnityEngine;

// namespace Game {
//     public class System : MonoBehaviour {
//         private static System INSTANCE;
//         private static GameObject CANVAS;
//         private static float INTERVAL;
//         public static event Action MoveTickEvent;
        
//         public static bool IS_OVER {
//             set {
//                 INSTANCE.enabled = !value;
//                 CANVAS.SetActive(value);

//                 if (value) {
//                     INSTANCE.timer = 0;
//                 }
//             }
//         }

//         public static float AdjustInterval() {
//             return INTERVAL = 29f / (9f * Body.Count + 20f);
//         }

//         private float timer;

//         protected void Awake() {
//             Lua.Init();
//             Lua.Require("Main"); // 初始化脚本

//             INSTANCE = this;
//             CANVAS = GameObject.Find("Canvas");
//             CANVAS.SetActive(false);

//             if (Application.platform != RuntimePlatform.Android) {
//                 var canvas2 = GameObject.Find("Canvas2");
//                 canvas2.SetActive(false);
//             }
//         }

//         protected void Update() {
//             this.timer += Time.deltaTime;

//             if (this.timer >= INTERVAL) {
//                 System.MoveTickEvent();
//                 this.timer -= INTERVAL;
//             }
//         }

//         protected void LateUpdate() {
//             Lua.Update();
//         }

//         protected void OnGUI() {
//             GUILayout.Label(INTERVAL.ToString());
//         }
//     }
// }