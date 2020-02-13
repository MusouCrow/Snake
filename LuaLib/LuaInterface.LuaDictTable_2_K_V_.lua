---@class LuaInterface.LuaDictTable_2_K_V_ : System.Object
---@field public Item any
local m = {}

---@virtual
function m:Dispose() end

---@return table<any, any>
function m:ToDictionary() end

---@virtual
---@return any
function m:GetEnumerator() end

LuaInterface.LuaDictTable_2_K_V_ = m
return m
