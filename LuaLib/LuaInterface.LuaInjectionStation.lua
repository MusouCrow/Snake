---@class LuaInterface.LuaInjectionStation : System.Object
---@field public NOT_INJECTION_FLAG number @static
---@field public INVALID_INJECTION_FLAG number @static
local m = {}

---@static
---@param index number
---@return number
function m.GetInjectFlag(index) end

---@static
---@param index number
---@return LuaInterface.LuaFunction
function m.GetInjectionFunction(index) end

---@static
---@param index number
---@param injectFlag number
---@param func LuaInterface.LuaFunction
function m.CacheInjectFunction(index, injectFlag, func) end

---@static
function m.Clear() end

LuaInterface.LuaInjectionStation = m
return m
