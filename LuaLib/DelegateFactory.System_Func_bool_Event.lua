---@class DelegateFactory.System_Func_bool_Event : LuaInterface.LuaDelegate
local m = {}

---@return boolean
function m:Call() end

---@return boolean
function m:CallWithSelf() end

DelegateFactory.System_Func_bool_Event = m
return m
