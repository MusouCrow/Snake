---@class LuaInterface.LuaObjectPool : System.Object
---@field public Item any
local m = {}

function m:Clear() end

---@param obj any
---@return number
function m:Add(obj) end

---@param index number
---@return any
function m:TryGetValue(index) end

---@param pos number
---@return any
function m:Remove(pos) end

---@param pos number
---@return any
function m:Destroy(pos) end

---@param collectListener fun(arg1:any, arg2:number)
function m:StepCollect(collectListener) end

---@param pos number
---@param o any
---@return any
function m:Replace(pos, o) end

LuaInterface.LuaObjectPool = m
return m
