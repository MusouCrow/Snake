---@class LuaInterface.LuaDelegate : System.Object
---@field public func LuaInterface.LuaFunction
---@field public self LuaInterface.LuaTable
---@field public method System.Reflection.MethodInfo
local m = {}

---@virtual
function m:Dispose() end

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@static
---@param a LuaInterface.LuaDelegate
---@param b LuaInterface.LuaDelegate
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a LuaInterface.LuaDelegate
---@param b LuaInterface.LuaDelegate
---@return boolean
function m.op_Inequality(a, b) end

---@virtual
---@return number
function m:GetHashCode() end

LuaInterface.LuaDelegate = m
return m
