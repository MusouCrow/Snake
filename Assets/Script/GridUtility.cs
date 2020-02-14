
using UnityEngine;
using LuaInterface;

namespace Game {
    public static class GridUtility {
        public const float SIZE = 0.32f;
        
        public static Vector2 ToPosition(int x, int y) {
            return new Vector2(x * SIZE + SIZE * 0.5f, y * SIZE + SIZE * 0.5f);
        }
    }
}


