---@class LuaInterface.LuaDictTable.Enumerator : System.Object
---@field public Current System.Collections.DictionaryEntry
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

---@virtual
function m:Dispose() end

LuaInterface.LuaDictTable.Enumerator = m
return m
