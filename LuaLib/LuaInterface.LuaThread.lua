---@class LuaInterface.LuaThread : LuaInterface.LuaBaseRef
local m = {}

---@overload fun(arg1:any):
---@overload fun(arg1:any, arg2:any):
---@overload fun(arg1:any, arg2:any, arg3:any):
---@overload fun():(, any)
---@overload fun(arg1:any):(, any)
---@overload fun(arg1:any, arg2:any):(, any)
---@overload fun(arg1:any, arg2:any, arg3:any):(, any)
---@return number
function m:Resume() end

LuaInterface.LuaThread = m
return m
