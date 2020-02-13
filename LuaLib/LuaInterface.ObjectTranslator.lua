---@class LuaInterface.ObjectTranslator : System.Object
---@field public objectsBackMap table<any, number>
---@field public objects LuaInterface.LuaObjectPool
---@field public LogGC boolean
local m = {}

---@param obj any
---@return number
function m:AddObject(obj) end

---@static
---@param L System.IntPtr
---@return LuaInterface.ObjectTranslator
function m.Get(L) end

---@param udata number
function m:RemoveObject(udata) end

---@param udata number
---@return any
function m:GetObject(udata) end

---@param udata number
function m:Destroy(udata) end

---@param id number
---@param time number
function m:DelayDestroy(id, time) end

---@param o any
---@return boolean, System.Int32
function m:Getudata(o) end

---@param udata number
function m:Destroyudata(udata) end

---@param index number
---@param o any
function m:SetBack(index, o) end

function m:Collect() end

function m:StepCollect() end

function m:Dispose() end

LuaInterface.ObjectTranslator = m
return m
