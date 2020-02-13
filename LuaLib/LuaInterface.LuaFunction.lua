---@class LuaInterface.LuaFunction : LuaInterface.LuaBaseRef
local m = {}

---@virtual
function m:Dispose() end

---@return any
function m:ToDelegate() end

---@virtual
---@return number
function m:BeginPCall() end

function m:PCall() end

function m:EndPCall() end

---@overload fun(arg1:any)
---@overload fun(arg1:any, arg2:any)
---@overload fun(arg1:any, arg2:any, arg3:any)
---@overload fun(arg1:any, arg2:any, arg3:any, arg4:any)
---@overload fun(arg1:any, arg2:any, arg3:any, arg4:any, arg5:any)
---@overload fun(arg1:any, arg2:any, arg3:any, arg4:any, arg5:any, arg6:any)
---@overload fun(arg1:any, arg2:any, arg3:any, arg4:any, arg5:any, arg6:any, arg7:any)
---@overload fun(arg1:any, arg2:any, arg3:any, arg4:any, arg5:any, arg6:any, arg7:any, arg8:any)
---@overload fun(arg1:any, arg2:any, arg3:any, arg4:any, arg5:any, arg6:any, arg7:any, arg8:any, arg9:any)
function m:Call() end

---@overload fun(arg1:any):
---@overload fun(arg1:any, arg2:any):
---@overload fun(arg1:any, arg2:any, arg3:any):
---@overload fun(arg1:any, arg2:any, arg3:any, arg4:any):
---@overload fun(arg1:any, arg2:any, arg3:any, arg4:any, arg5:any):
---@overload fun(arg1:any, arg2:any, arg3:any, arg4:any, arg5:any, arg6:any):
---@overload fun(arg1:any, arg2:any, arg3:any, arg4:any, arg5:any, arg6:any, arg7:any):
---@overload fun(arg1:any, arg2:any, arg3:any, arg4:any, arg5:any, arg6:any, arg7:any, arg8:any):
---@overload fun(arg1:any, arg2:any, arg3:any, arg4:any, arg5:any, arg6:any, arg7:any, arg8:any, arg9:any):
---@return any
function m:Invoke() end

---@overload fun():
---@param ... any|any[]
---@return any[]
function m:LazyCall(...) end

---@param args number
function m:CheckStack(args) end

---@return boolean
function m:IsBegin() end

---@overload fun(n:number)
---@overload fun(un:number)
---@overload fun(num:number)
---@overload fun(un:number)
---@overload fun(b:boolean)
---@overload fun(str:string)
---@overload fun(ptr:System.IntPtr)
---@overload fun(lbr:LuaInterface.LuaBaseRef)
---@overload fun(o:any)
---@overload fun(o:UnityEngine.Object)
---@overload fun(t:System.Type)
---@overload fun(e:System.Enum)
---@overload fun(array:System.Array)
---@overload fun(v3:UnityEngine.Vector3)
---@overload fun(v2:UnityEngine.Vector2)
---@overload fun(v4:UnityEngine.Vector4)
---@overload fun(quat:UnityEngine.Quaternion)
---@overload fun(clr:UnityEngine.Color)
---@overload fun(ray:UnityEngine.Ray)
---@overload fun(bounds:UnityEngine.Bounds)
---@overload fun(hit:UnityEngine.RaycastHit)
---@overload fun(t:UnityEngine.Touch)
---@overload fun(buffer:LuaInterface.LuaByteBuffer)
---@param num number
function m:Push(num) end

---@param n UnityEngine.LayerMask
function m:PushLayerMask(n) end

---@param value System.ValueType
function m:PushValue(value) end

---@param o any
function m:PushObject(o) end

---@param o any
function m:PushSealed(o) end

---@param t any
function m:PushGeneric(t) end

---@param args any[]
function m:PushArgs(args) end

---@overload fun(buffer:string)
---@param buffer string
---@param len number
function m:PushByteBuffer(buffer, len) end

---@return number
function m:CheckNumber() end

---@return boolean
function m:CheckBoolean() end

---@return string
function m:CheckString() end

---@return UnityEngine.Vector3
function m:CheckVector3() end

---@return UnityEngine.Quaternion
function m:CheckQuaternion() end

---@return UnityEngine.Vector2
function m:CheckVector2() end

---@return UnityEngine.Vector4
function m:CheckVector4() end

---@return UnityEngine.Color
function m:CheckColor() end

---@return UnityEngine.Ray
function m:CheckRay() end

---@return UnityEngine.Bounds
function m:CheckBounds() end

---@return UnityEngine.LayerMask
function m:CheckLayerMask() end

---@return number
function m:CheckLong() end

---@return number
function m:CheckULong() end

---@return fun(...:any|any[]):
function m:CheckDelegate() end

---@return any
function m:CheckVariant() end

---@return number[]
function m:CheckCharBuffer() end

---@return string
function m:CheckByteBuffer() end

---@param t System.Type
---@return any
function m:CheckObject(t) end

---@return LuaInterface.LuaFunction
function m:CheckLuaFunction() end

---@return LuaInterface.LuaTable
function m:CheckLuaTable() end

---@return LuaInterface.LuaThread
function m:CheckLuaThread() end

---@return any
function m:CheckValue() end

LuaInterface.LuaFunction = m
return m
