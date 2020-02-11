using System.Collections.Generic;
using UnityEngine;
using LuaInterface;

namespace Game {
    public class Food : MonoBehaviour {
        private GridPosition gridPosition;

        private LuaState state;
        private LuaTable table;

        // 创建类对象
        protected LuaTable NewTable() {
            var func = this.state.GetFunction("Food.New");
            
            func.BeginPCall();
            func.Push(this.gameObject);
            func.PCall();

            var table = func.CheckLuaTable();
            func.EndPCall();

            return table;
        }

        protected void Awake() {
            this.state = Lua.NewState("Food");
            this.table = this.NewTable();
        }

        protected void OnTriggerEnter2D(Collider2D collider) {
            Factory.FoodCount--;
            Destroy(this.gameObject);
        }
    }
}