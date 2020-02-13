---@class DelegateFactory.DelegateCreate : System.MulticastDelegate
local m = {}

---@virtual
---@param func LuaInterface.LuaFunction
---@param self LuaInterface.LuaTable
---@param flag boolean
---@return fun(...:any|any[]):
function m:Invoke(func, self, flag) end

---@virtual
---@param func LuaInterface.LuaFunction
---@param self LuaInterface.LuaTable
---@param flag boolean
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(func, self, flag, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return fun(...:any|any[]):
function m:EndInvoke(result) end

DelegateFactory.DelegateCreate = m
return m
