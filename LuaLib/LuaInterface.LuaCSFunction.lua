---@class LuaInterface.LuaCSFunction : System.MulticastDelegate
local m = {}

---@virtual
---@param luaState System.IntPtr
---@return number
function m:Invoke(luaState) end

---@virtual
---@param luaState System.IntPtr
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(luaState, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return number
function m:EndInvoke(result) end

LuaInterface.LuaCSFunction = m
return m
