using UnityEngine;
using LuaInterface;

namespace Game {
    public static class Lua {
        public static LuaState state;

        public static void Init() {
            Lua.state = new LuaState();
            Lua.state.Start();
            LuaBinder.Bind(state);

            string path = Application.dataPath + "/Lua";
            Lua.state.AddSearchPath(path);
        }

        public static void Require(string name) {
            Lua.state.Require(name);
            Lua.state.CheckTop();
        }

        public static void Update() {
            Lua.state.CheckTop();
            Lua.state.Collect();
        }
    }
}