---@class LuaInterface.EventObject : System.Object
---@field public op LuaInterface.EventOp
---@field public func fun(...:any|any[]):
---@field public type System.Type
local m = {}

---@static
---@param a LuaInterface.EventObject
---@param b fun(...:any|any[]):
---@return LuaInterface.EventObject
function m.op_Addition(a, b) end

---@static
---@param a LuaInterface.EventObject
---@param b fun(...:any|any[]):
---@return LuaInterface.EventObject
function m.op_Subtraction(a, b) end

LuaInterface.EventObject = m
return m
