using System.Collections.Generic;
using UnityEngine;
using LuaInterface;

namespace Game {
    public class Food : MonoBehaviour {
        public GridPosition gridPosition;

        private LuaTable table;

        // 创建类对象
        protected LuaTable NewTable() {
            var func = Lua.state.GetFunction("Food.New");
            
            func.BeginPCall();
            func.Push(this);
            func.PCall();

            var table = func.CheckLuaTable();
            func.EndPCall();

            return table;
        }

        protected void Awake() {
            Lua.Require("Food"); // 导入脚本
            this.table = this.NewTable(); // 初始化类对象

            var func = Lua.state.GetFunction("Food.Awake");
            func.Call(this.table);
        }

        protected void OnTriggerEnter2D(Collider2D collider) {
            //  var func = Lua.state.GetFunction("Food.OnTriggerEnter2D");
            
            // func.BeginPCall();
            // func.Push(this);//有没有这句，报错都是一样的
            // func.PCall();

            // func.EndPCall();
            Factory.FoodCount--;
            Destroy(this.gameObject);
            
        }
    }
}