---@class TestDelegate : UnityEngine.MonoBehaviour
local m = {}

---@static
---@param func LuaInterface.LuaFunction
---@param self LuaInterface.LuaTable
---@param flag boolean
---@return fun(go:UnityEngine.GameObject)
function m.TestEventListener_OnClick(func, self, flag) end

---@static
---@param func LuaInterface.LuaFunction
---@param self LuaInterface.LuaTable
---@param flag boolean
---@return fun(go:UnityEngine.GameObject)
function m.TestEventListener_VoidDelegate(func, self, flag) end

TestDelegate = m
return m
