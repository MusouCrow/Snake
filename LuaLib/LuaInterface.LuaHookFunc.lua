---@class LuaInterface.LuaHookFunc : System.MulticastDelegate
local m = {}

---@virtual
---@param L System.IntPtr
---@param ar LuaInterface.Lua_Debug
---@return LuaInterface.Lua_Debug
function m:Invoke(L, ar) end

---@virtual
---@param L System.IntPtr
---@param ar LuaInterface.Lua_Debug
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult, LuaInterface.Lua_Debug
function m:BeginInvoke(L, ar, callback, object) end

---@virtual
---@param ar LuaInterface.Lua_Debug
---@param result System.IAsyncResult
---@return LuaInterface.Lua_Debug
function m:EndInvoke(ar, result) end

LuaInterface.LuaHookFunc = m
return m
