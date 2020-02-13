using System.Collections.Generic;
using UnityEngine;
using LuaInterface;

namespace Game {
    public class Factory : MonoBehaviour {
        private static Factory INSTANCE;

        private LuaTable table;

        public static int FoodCount {
            get {
                return INSTANCE.foodCount;
            }
            set {
                INSTANCE.foodCount = value;
                System.AdjustInterval();
            }
        }
        
        [SerializeField]
        private GameObject foodPrefab;
        [SerializeField]
        private int min;
        [SerializeField]
        private int max;

        private int foodCount;

        // 创建类对象
        protected LuaTable NewTable() {
            var func = Lua.state.GetFunction("Factory.New");
            
            func.BeginPCall();
            func.Push(this);
            func.PCall();

            var table = func.CheckLuaTable();
            func.EndPCall();

            return table;
        }

        protected void Awake() {
            Lua.Require("Factory"); // 导入脚本
            this.table = this.NewTable(); // 初始化类对象

            INSTANCE = this;
            
            System.MoveTickEvent += this.MoveTick;
        }

        private void Produce() {
            var func = Lua.state.GetFunction("Factory.Produce");
            
            func.BeginPCall();
            func.Push(this);
            func.Push(min);
            func.Push(max);
            func.Push(foodPrefab);
            func.Push(FoodCount);
            func.PCall();

            foodCount = (int)func.CheckNumber();
            func.EndPCall();
        }
        

        private void MoveTick() {
            if (FoodCount == 0) {
                this.Produce();
            }
        }
        

        
    }
}