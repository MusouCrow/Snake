---@class LuaInterface.LuaValueType : System.ValueType
---@field public None number @static
---@field public Vector3 number @static
---@field public Quaternion number @static
---@field public Vector2 number @static
---@field public Color number @static
---@field public Vector4 number @static
---@field public Ray number @static
---@field public Bounds number @static
---@field public Touch number @static
---@field public LayerMask number @static
---@field public RaycastHit number @static
---@field public Int64 number @static
---@field public UInt64 number @static
---@field public Max number @static
---@field public Rect number @static
local m = {}

---@overload fun(intVal:number): @static
---@static
---@param mask LuaInterface.LuaValueType
---@return number
function m.op_Implicit(mask) end

---@virtual
---@return string
function m:ToString() end

LuaInterface.LuaValueType = m
return m
