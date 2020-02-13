---@class DelegateFactory.UnityEngine_Application_LogCallback_Event : LuaInterface.LuaDelegate
local m = {}

---@param param0 string
---@param param1 string
---@param param2 UnityEngine.LogType
function m:Call(param0, param1, param2) end

---@param param0 string
---@param param1 string
---@param param2 UnityEngine.LogType
function m:CallWithSelf(param0, param1, param2) end

DelegateFactory.UnityEngine_Application_LogCallback_Event = m
return m
