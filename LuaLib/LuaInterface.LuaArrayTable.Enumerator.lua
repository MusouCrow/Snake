---@class LuaInterface.LuaArrayTable.Enumerator : System.Object
---@field public Current any
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

---@virtual
function m:Dispose() end

LuaInterface.LuaArrayTable.Enumerator = m
return m
