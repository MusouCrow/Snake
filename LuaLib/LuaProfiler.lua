---@class LuaProfiler : System.Object
---@field public list string[] @static
local m = {}

---@static
function m.Clear() end

---@static
---@param name string
---@return number
function m.GetID(name) end

---@static
---@param id number
function m.BeginSample(id) end

---@static
function m.EndSample() end

LuaProfiler = m
return m
