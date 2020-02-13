---@class DelegateFactory.System_Comparison_int_Event : LuaInterface.LuaDelegate
local m = {}

---@param param0 number
---@param param1 number
---@return number
function m:Call(param0, param1) end

---@param param0 number
---@param param1 number
---@return number
function m:CallWithSelf(param0, param1) end

DelegateFactory.System_Comparison_int_Event = m
return m
