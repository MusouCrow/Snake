---@class LuaInterface.TypeTraits_1_T_ : System.Object
---@field public Check fun(arg1:System.IntPtr, arg2:number): @static
---@field public type System.Type @static
---@field public IsValueType boolean @static
---@field public IsArray boolean @static
local m = {}

---@static
---@param check fun(arg1:System.IntPtr, arg2:number):
function m.Init(check) end

---@static
---@return string
function m.GetTypeName() end

---@static
---@param L System.IntPtr
---@return number
function m.GetLuaReference(L) end

LuaInterface.TypeTraits_1_T_ = m
return m
