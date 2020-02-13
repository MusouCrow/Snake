---@class LuaInterface.LuaDictTable : System.Object
---@field public Item any
local m = {}

---@virtual
function m:Dispose() end

---@return System.Collections.Hashtable
function m:ToHashtable() end

---@virtual
---@return System.Collections.Generic.IEnumerator_1_System_Collections_DictionaryEntry_
function m:GetEnumerator() end

LuaInterface.LuaDictTable = m
return m
