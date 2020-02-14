using System;
using UnityEngine;
using LuaInterface;

namespace Game {
    public class Body : MonoBehaviour {
        public static GameObject PREFAB;

        private LuaTable table;
        
        public static int Count = 0;
        

        // private static GameObject NewBody(GameObject pre) {
        //     var obj = GameObject.Instantiate(PREFAB, pre.transform.position, Quaternion.identity);
        //     obj.transform.position = pre.transform.position;
        //     var a = obj.GetComponent<Body>();
        //     var b = pre.GetComponent<Body>();

        //     a.prebody = b;
        //     b.afterbody = a;

        //     return obj;
        // }

        [NonSerialized]
        public Body prebody;
        [NonSerialized]
        public Body afterbody;
        public Vector2 laterPosition;
        public bool willNew;

        
        // 创建类对象
        protected LuaTable NewTable() {
            var func = Lua.state.GetFunction("Body.New");
            
            func.BeginPCall();
            func.Push(this);
            func.PCall();

            var table = func.CheckLuaTable();
            func.EndPCall();

            return table;
        }

        protected void Awake() {
            Lua.Require("Body"); // 导入脚本
            this.table = this.NewTable(); // 初始化类对象

            var func = Lua.state.GetFunction("Body.Awake");
            func.Call(this.table);
           
           
            System.MoveTickEvent += this.MoveTick;
            System.MoveTickEvent += this.WhenNewBornTick;
        
        }

        protected void OnDestroy() {
            var func = Lua.state.GetFunction("Body.OnDestroy");
            func.Call(this.table);

            System.MoveTickEvent -= this.MoveTick;
            System.MoveTickEvent -= this.WhenNewBornTick;
            
        }

        public void Bore() {
            //print("Body.Bore");
            var func = Lua.state.GetFunction("Body.Bore");
            func.Call(this.table);
        }

        private void MoveTick() {
            var func = Lua.state.GetFunction("Body.MoveTick");
            func.Call(this.table);
        }
        
    
        private void WhenNewBornTick() {
          var func = Lua.state.GetFunction("Body.WhenNewBornTick");
            func.Call(this.table);

            System.MoveTickEvent -= this.WhenNewBornTick;
        }
    }
}

//=========================================================
// using System;
// using UnityEngine;

// namespace Game {
//     public class Body : MonoBehaviour {
//         private static GameObject PREFAB;
        
//         public static int Count {
//             get;
//             private set;
//         }

//         private static GameObject NewBody(GameObject pre) {
//             var obj = GameObject.Instantiate(PREFAB, pre.transform.position, Quaternion.identity);
//             obj.transform.position = pre.transform.position;
//             var a = obj.GetComponent<Body>();
//             var b = pre.GetComponent<Body>();

//             a.prebody = b;
//             b.afterbody = a;

//             return obj;
//         }

//         [NonSerialized]
//         public Body prebody;
//         [NonSerialized]
//         public Body afterbody;
//         public Vector2 laterPosition;
//         private bool willNew;

//         protected void Awake() {
//             PREFAB = PREFAB == null ? Resources.Load("Prefab/Body") as GameObject : PREFAB;
           
//             System.MoveTickEvent += this.MoveTick;
//             System.MoveTickEvent += this.WhenNewBornTick;
//             Head.TAIL = this;
//             Body.Count++;
//         }

//         protected void OnDestroy() {
//             System.MoveTickEvent -= this.MoveTick;
//             System.MoveTickEvent -= this.WhenNewBornTick;
//             Body.Count--;
//         }

//         public void Bore() {
//             if (this.afterbody == null) {
//                 this.willNew = true;
//             }
//         }

//         private void MoveTick() {
//             if (this.willNew) {
//                 Body.NewBody(this.gameObject);
//                 this.willNew = false;
//             }

//             if (this.prebody == null) {
//                 return;
//             }

//             this.laterPosition = this.transform.position;
//             this.transform.position = this.prebody.laterPosition;
//         }
    
//         private void WhenNewBornTick() {
//             if (this.tag == "NewBody") {
//                 this.tag = "Body";
//             }

//             System.MoveTickEvent -= this.WhenNewBornTick;
//         }
//     }
// }