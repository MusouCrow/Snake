---@class LuaInterface.LuaField : System.Object
local m = {}

---@param L System.IntPtr
---@return number
function m:Get(L) end

---@param L System.IntPtr
---@return number
function m:Set(L) end

LuaInterface.LuaField = m
return m
