---@class ToLuaInjectionTestWrap : System.Object
local m = {}

---@static
---@param L LuaInterface.LuaState
function m.Register(L) end

ToLuaInjectionTestWrap = m
return m
