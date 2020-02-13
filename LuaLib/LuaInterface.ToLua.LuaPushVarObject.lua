---@class LuaInterface.ToLua.LuaPushVarObject : System.MulticastDelegate
local m = {}

---@virtual
---@param L System.IntPtr
---@param o any
function m:Invoke(L, o) end

---@virtual
---@param L System.IntPtr
---@param o any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(L, o, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

LuaInterface.ToLua.LuaPushVarObject = m
return m
