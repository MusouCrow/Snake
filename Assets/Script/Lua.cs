using UnityEngine;
using LuaInterface;

namespace Game {
    public static class Lua {
        public static LuaState NewState(string name) {
            var state = new LuaState();
            state.Start();

            LuaBinder.Bind(state);

            string path = Application.dataPath + "/Lua";
            state.AddSearchPath(path);
            state.Require(name);

            return state;
        }
    }
}