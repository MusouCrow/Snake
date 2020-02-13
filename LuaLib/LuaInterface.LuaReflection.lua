---@class LuaInterface.LuaReflection : System.Object
---@field public list System.Reflection.Assembly[]
local m = {}

---@static
---@param L System.IntPtr
function m.OpenLibs(L) end

---@static
---@param L System.IntPtr
---@return LuaInterface.LuaReflection
function m.Get(L) end

---@virtual
function m:Dispose() end

LuaInterface.LuaReflection = m
return m
