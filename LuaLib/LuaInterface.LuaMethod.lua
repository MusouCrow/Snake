---@class LuaInterface.LuaMethod : System.Object
local m = {}

---@param L System.IntPtr
---@return number
function m:Call(L) end

function m:Destroy() end

LuaInterface.LuaMethod = m
return m
