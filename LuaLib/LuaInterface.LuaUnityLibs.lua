---@class LuaInterface.LuaUnityLibs : System.Object
local m = {}

---@static
---@param L System.IntPtr
function m.OpenLibs(L) end

---@static
---@param L System.IntPtr
function m.OpenLuaLibs(L) end

LuaInterface.LuaUnityLibs = m
return m
