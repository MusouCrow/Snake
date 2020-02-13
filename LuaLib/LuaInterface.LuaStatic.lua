---@class LuaInterface.LuaStatic : System.Object
local m = {}

---@static
---@param L System.IntPtr
---@param t System.Type
---@return number
function m.GetMetaReference(L, t) end

---@static
---@param L System.IntPtr
---@param t System.Type
---@return number
function m.GetMissMetaReference(L, t) end

---@static
---@param L System.IntPtr
---@param reference number
---@return System.Type
function m.GetClassType(L, reference) end

---@static
---@param L System.IntPtr
---@param reference number
---@return LuaInterface.LuaFunction
function m.GetFunction(L, reference) end

---@static
---@param L System.IntPtr
---@param reference number
---@return LuaInterface.LuaTable
function m.GetTable(L, reference) end

---@static
---@param L System.IntPtr
---@param reference number
---@return LuaInterface.LuaThread
function m.GetLuaThread(L, reference) end

---@static
---@param L System.IntPtr
function m.GetUnpackRayRef(L) end

---@static
---@param L System.IntPtr
function m.GetUnpackBounds(L) end

---@static
---@param L System.IntPtr
function m.GetPackRay(L) end

---@static
---@param L System.IntPtr
function m.GetPackRaycastHit(L) end

---@static
---@param L System.IntPtr
function m.GetPackTouch(L) end

---@static
---@param L System.IntPtr
function m.GetPackBounds(L) end

---@static
---@param L System.IntPtr
---@return number
function m.GetArrayMetatable(L) end

---@static
---@param L System.IntPtr
---@return number
function m.GetTypeMetatable(L) end

---@static
---@param L System.IntPtr
---@return number
function m.GetDelegateMetatable(L) end

---@static
---@param L System.IntPtr
---@return number
function m.GetEventMetatable(L) end

---@static
---@param L System.IntPtr
---@return number
function m.GetIterMetatable(L) end

---@static
---@param L System.IntPtr
---@param e System.Enum
---@return number, System.Object
function m.GetEnumObject(L, e) end

---@static
---@param L System.IntPtr
---@param t System.Type
---@return fun(luaState:System.IntPtr):
function m.GetPreModule(L, t) end

LuaInterface.LuaStatic = m
return m
