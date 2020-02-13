---@class LuaInterface.LuaConstructor : System.Object
local m = {}

---@param L System.IntPtr
---@return number
function m:Call(L) end

function m:Destroy() end

LuaInterface.LuaConstructor = m
return m
