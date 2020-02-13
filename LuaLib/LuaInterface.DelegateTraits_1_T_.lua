---@class LuaInterface.DelegateTraits_1_T_ : System.Object
local m = {}

---@static
---@param func fun(func:LuaInterface.LuaFunction, self:LuaInterface.LuaTable, flag:boolean):
function m.Init(func) end

---@overload fun(func:LuaInterface.LuaFunction, self:LuaInterface.LuaTable): @static
---@static
---@param func LuaInterface.LuaFunction
---@return fun(...:any|any[]):
function m.Create(func) end

LuaInterface.DelegateTraits_1_T_ = m
return m
