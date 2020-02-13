---@class DelegateFactory.System_Action_Event : LuaInterface.LuaDelegate
local m = {}

function m:Call() end

function m:CallWithSelf() end

DelegateFactory.System_Action_Event = m
return m
