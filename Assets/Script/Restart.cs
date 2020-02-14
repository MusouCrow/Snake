using UnityEngine;
using UnityEngine.UI;
using LuaInterface;

namespace Game {
    public class Restart : MonoBehaviour {
        public Button button;

        private LuaTable table;

          // 创建类对象
        protected LuaTable NewTable() {
            var func = Lua.state.GetFunction("Restart.New");
            
            func.BeginPCall();
            func.Push(this);
            func.PCall();

            var table = func.CheckLuaTable();
            func.EndPCall();

            return table;
        }

        protected void Awake() {
            Lua.Require("Restart"); // 导入脚本
            this.table = this.NewTable(); // 初始化类对象

          

            // var func = Lua.state.GetFunction("Restart.Awake");
            // func.Call(this.table);

            this.button = this.GetComponent<Button>();
            this.button.onClick.AddListener(this.OnClick);//因为没有实现，在这里先这样用一下
        }


        private void OnClick() {
            var func = Lua.state.GetFunction("Restart.OnClick");
            func.Call(this.table);
          
        }
    }
}


// using UnityEngine;
// using UnityEngine.UI;

// namespace Game {
//     public class Restart : MonoBehaviour {
//         private Button button;

//         protected void Awake() {
//             this.button = this.GetComponent<Button>();
//             this.button.onClick.AddListener(this.OnClick);
//         }

//         private void OnClick() {
//             var uis = GameObject.FindGameObjectsWithTag("UI");

//             for (int i = 0; i < uis.Length; i++) {
//                 uis[i].GetComponent<Gradients>().enabled = true;
//             }

//             System.IS_OVER = false;

//             var bodys = GameObject.FindGameObjectsWithTag("Body");
//             var foods = GameObject.FindGameObjectsWithTag("Food");
//             var newBody = GameObject.FindGameObjectWithTag("NewBody");
//             var head = GameObject.FindGameObjectWithTag("Head");

//             for (int i = 0; i < bodys.Length; i++) {
//                 Destroy(bodys[i]);
//             }

//             for (int i = 0; i < foods.Length; i++) {
//                 Destroy(foods[i]);
//             }

//             Destroy(newBody);
//             head.GetComponent<Head>().Reset();
//             Factory.FoodCount = 0;
//         }
//     }
// }
