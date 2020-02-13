---@class LuaInterface.ToLua.LuaTableToVar : System.MulticastDelegate
local m = {}

---@virtual
---@param L System.IntPtr
---@param pos number
---@return any
function m:Invoke(L, pos) end

---@virtual
---@param L System.IntPtr
---@param pos number
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(L, pos, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return any
function m:EndInvoke(result) end

LuaInterface.ToLua.LuaTableToVar = m
return m
