---@class LuaInterface.LuaMisc : System.Object
local m = {}

---@static
---@param t System.Type
---@return string
function m.GetArrayRank(t) end

---@static
---@param t System.Type
---@return string
function m.GetTypeName(t) end

---@static
---@param types System.Type[]
---@param offset number
---@param count number
---@return string[]
function m.GetGenericName(types, offset, count) end

---@static
---@param obj any
---@param t System.Type
---@param eventName string
---@return fun(...:any|any[]):
function m.GetEventHandler(obj, t, eventName) end

---@static
---@param t System.Type
---@return string
function m.GetPrimitiveStr(t) end

---@static
---@param obj any
---@return number
function m.ToDouble(obj) end

---@static
---@param t System.Type
---@return System.Type
function m.GetExportBaseType(t) end

LuaInterface.LuaMisc = m
return m
