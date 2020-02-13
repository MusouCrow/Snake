---@class LuaInterface.LuaBaseRef : System.Object
---@field public name string
---@field public IsAlive boolean
local m = {}

---@overload fun(disposeManagedResources:boolean) @virtual
---@overload fun(generation:number)
---@virtual
function m:Dispose() end

function m:AddRef() end

---@return LuaInterface.LuaState
function m:GetLuaState() end

function m:Push() end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@return number
function m:GetReference() end

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@static
---@param a LuaInterface.LuaBaseRef
---@param b LuaInterface.LuaBaseRef
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a LuaInterface.LuaBaseRef
---@param b LuaInterface.LuaBaseRef
---@return boolean
function m.op_Inequality(a, b) end

LuaInterface.LuaBaseRef = m
return m
