---@class LuaInterface.LuaArrayTable : System.Object
---@field public Length number
---@field public Item any
local m = {}

---@virtual
function m:Dispose() end

---@param action fun(obj:any)
function m:ForEach(action) end

---@virtual
---@return System.Collections.Generic.IEnumerator_1_System_Object_
function m:GetEnumerator() end

LuaInterface.LuaArrayTable = m
return m
