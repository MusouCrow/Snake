using UnityEngine;
using LuaInterface;

namespace Game {
    public class Test : MonoBehaviour {
        [SerializeField]
        private int _value; // 作为类对象参数用

        private LuaState state;
        private LuaTable table;

        protected void Awake() {
            this.state = Lua.NewState("Test");
            
            this.table = this.NewTable(this._value);
            Debug.Log(this.table["value"]);

            var func = this.table.GetLuaFunction("Print");
            func.Call(this.table);
        }

        protected void Start() {
            var go = this.NewGameObject("Test");
            Debug.Log(go);
        }

        // 创建类对象
        protected LuaTable NewTable(int value) {
            var func = this.state.GetFunction("Test.New");
            
            func.BeginPCall();
            func.Push(value);
            func.Push(this.gameObject);
            func.PCall();
            var table = func.CheckLuaTable();
            func.EndPCall();

            return table;
        }

        public GameObject NewGameObject(string name) {
            var func = this.state.GetFunction("Test.NewGameObject");
            func.BeginPCall();
            func.Push(name);
            func.PCall();
            var go = func.CheckObject(typeof(GameObject)) as GameObject;
            func.EndPCall();

            return go;
        }
    }
}