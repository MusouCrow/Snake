---@class LuaInterface.LuaEvent : System.Object
local m = {}

---@overload fun(disposeManagedResources:boolean)
---@virtual
function m:Dispose() end

---@param func LuaInterface.LuaFunction
---@param obj LuaInterface.LuaTable
function m:Add(func, obj) end

---@param func LuaInterface.LuaFunction
---@param obj LuaInterface.LuaTable
function m:Remove(func, obj) end

LuaInterface.LuaEvent = m
return m
