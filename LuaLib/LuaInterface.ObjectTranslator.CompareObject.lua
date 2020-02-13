---@class LuaInterface.ObjectTranslator.CompareObject : System.Object
local m = {}

---@virtual
---@param x any
---@param y any
---@return boolean
function m:Equals(x, y) end

---@virtual
---@param obj any
---@return number
function m:GetHashCode(obj) end

LuaInterface.ObjectTranslator.CompareObject = m
return m
