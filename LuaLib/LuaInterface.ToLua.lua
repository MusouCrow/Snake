---@class LuaInterface.ToLua : System.Object
---@field public ToVarMap fun(L:System.IntPtr, pos:number):[] @static
---@field public VarPushMap table<System.Type, fun(L:System.IntPtr, o:any)> @static
local m = {}

---@static
---@param L System.IntPtr
function m.OpenLibs(L) end

---@static
---@param L System.IntPtr
---@return number
function m.DoFile(L) end

---@static
---@param L System.IntPtr
---@return number
function m.LoadFile(L) end

---@static
---@param L System.IntPtr
---@return number
function m.op_ToString(L) end

---@static
---@param instanceID number
---@param line number
---@return boolean
function m.OnOpenAsset(instanceID, line) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return string
function m.ToString(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return any
function m.ToObject(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return LuaInterface.LuaFunction
function m.ToLuaFunction(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return LuaInterface.LuaTable
function m.ToLuaTable(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return LuaInterface.LuaThread
function m.ToLuaThread(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Vector3
function m.ToVector3(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Vector4
function m.ToVector4(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Vector2
function m.ToVector2(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Quaternion
function m.ToQuaternion(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Color
function m.ToColor(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Ray
function m.ToRay(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Bounds
function m.ToBounds(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.LayerMask
function m.ToLayerMask(L, stackPos) end

---@overload fun(L:System.IntPtr, stackPos:number, t:System.Type): @static
---@static
---@param L System.IntPtr
---@param stackPos number
---@return any
function m.ToVarObject(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return any
function m.ToVarTable(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return System.ValueType
function m.ToNullable(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return LuaInterface.LuaFunction
function m.CheckLuaFunction(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return LuaInterface.LuaTable
function m.CheckLuaTable(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return LuaInterface.LuaThread
function m.CheckLuaThread(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return LuaInterface.LuaBaseRef
function m.CheckLuaBaseRef(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return string
function m.CheckString(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return System.IntPtr
function m.CheckIntPtr(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return System.Type
function m.CheckMonoType(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return System.Collections.IEnumerator
function m.CheckIter(L, stackPos) end

---@overload fun(L:System.IntPtr, stackPos:number, type:System.Type): @static
---@overload fun(L:System.IntPtr, stackPos:number): @static
---@static
---@param L System.IntPtr
---@param stackPos number
---@return any
function m.CheckObject(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Vector3
function m.CheckVector3(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Quaternion
function m.CheckQuaternion(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Vector2
function m.CheckVector2(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Vector4
function m.CheckVector4(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Color
function m.CheckColor(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Ray
function m.CheckRay(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Bounds
function m.CheckBounds(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.LayerMask
function m.CheckLayerMask(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return System.ValueType
function m.CheckValue(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return System.ValueType
function m.CheckNullable(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@param t System.Type
---@return any
function m.CheckVarObject(L, stackPos, t) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@param type System.Type
---@return UnityEngine.Object
function m.CheckUnityObject(L, stackPos, type) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@param type System.Type
---@return UnityEngine.TrackedReference
function m.CheckTrackedReference(L, stackPos, type) end

---@overload fun(L:System.IntPtr, stackPos:number): @static
---@static
---@param L System.IntPtr
---@param stackPos number
---@return any[]
function m.CheckObjectArray(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return System.ValueType[]
function m.CheckStructArray(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return number[]
function m.CheckCharBuffer(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return string
function m.CheckByteBuffer(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return System.ValueType[]
function m.CheckNumberArray(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return boolean[]
function m.CheckBoolArray(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return string[]
function m.CheckStringArray(L, stackPos) end

---@overload fun(L:System.IntPtr, stackPos:number, type:System.Type):(, System.Type, System.Type) @static
---@overload fun(L:System.IntPtr, stackPos:number, type:System.Type): @static
---@static
---@param L System.IntPtr
---@param stackPos number
---@param type System.Type
---@return any, System.Type
function m.CheckGenericObject(L, stackPos, type) end

---@overload fun(L:System.IntPtr, stackPos:number, count:number): @static
---@static
---@param L System.IntPtr
---@param stackPos number
---@param count number
---@return any[]
function m.ToParamsObject(L, stackPos, count) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@param count number
---@return string[]
function m.ToParamsString(L, stackPos, count) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@param count number
---@return System.ValueType[]
function m.ToParamsNumber(L, stackPos, count) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@param count number
---@return number[]
function m.ToParamsChar(L, stackPos, count) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@param count number
---@return boolean[]
function m.CheckParamsBool(L, stackPos, count) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@param count number
---@return System.ValueType[]
function m.CheckParamsNumber(L, stackPos, count) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@param count number
---@return number[]
function m.CheckParamsChar(L, stackPos, count) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@param count number
---@return string[]
function m.CheckParamsString(L, stackPos, count) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@param count number
---@return any[]
function m.CheckParamsObject(L, stackPos, count) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return number[]
function m.ToCharBuffer(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return string
function m.ToByteBuffer(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return System.ValueType[]
function m.ToNumberArray(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return boolean[]
function m.ToBoolArray(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return string[]
function m.ToStringArray(L, stackPos) end

---@overload fun(L:System.IntPtr, stackPos:number): @static
---@static
---@param L System.IntPtr
---@param stackPos number
---@return any[]
function m.ToObjectArray(L, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return System.ValueType[]
function m.ToStructArray(L, stackPos) end

---@overload fun(L:System.IntPtr, v2:UnityEngine.Vector2) @static
---@overload fun(L:System.IntPtr, v4:UnityEngine.Vector4) @static
---@overload fun(L:System.IntPtr, q:UnityEngine.Quaternion) @static
---@overload fun(L:System.IntPtr, clr:UnityEngine.Color) @static
---@overload fun(L:System.IntPtr, ray:UnityEngine.Ray) @static
---@overload fun(L:System.IntPtr, bound:UnityEngine.Bounds) @static
---@overload fun(L:System.IntPtr, hit:UnityEngine.RaycastHit) @static
---@overload fun(L:System.IntPtr, hit:UnityEngine.RaycastHit, flag:number) @static
---@overload fun(L:System.IntPtr, t:UnityEngine.Touch) @static
---@overload fun(L:System.IntPtr, t:UnityEngine.Touch, flag:number) @static
---@overload fun(L:System.IntPtr, bb:LuaInterface.LuaByteBuffer) @static
---@overload fun(L:System.IntPtr, array:System.Array) @static
---@overload fun(L:System.IntPtr, lbr:LuaInterface.LuaBaseRef) @static
---@overload fun(L:System.IntPtr, t:System.Type) @static
---@overload fun(L:System.IntPtr, ev:fun(...:any|any[]):) @static
---@overload fun(L:System.IntPtr, ev:LuaInterface.EventObject) @static
---@overload fun(L:System.IntPtr, iter:System.Collections.IEnumerator) @static
---@overload fun(L:System.IntPtr, e:System.Enum) @static
---@overload fun(L:System.IntPtr, obj:UnityEngine.Object) @static
---@overload fun(L:System.IntPtr, obj:UnityEngine.TrackedReference) @static
---@overload fun(L:System.IntPtr, obj:LuaInterface.nil) @static
---@overload fun(L:System.IntPtr, obj:any) @static
---@static
---@param L System.IntPtr
---@param v3 UnityEngine.Vector3
function m.Push(L, v3) end

---@static
---@param L System.IntPtr
---@param l UnityEngine.LayerMask
function m.PushLayerMask(L, l) end

---@static
---@param L System.IntPtr
---@param buffer string
function m.PushByteBuffer(L, buffer) end

---@static
---@param L System.IntPtr
---@param lo any
function m.PushOut(L, lo) end

---@static
---@param L System.IntPtr
---@param o any
function m.PushStruct(L, o) end

---@static
---@param L System.IntPtr
---@param v System.ValueType
function m.PushValue(L, v) end

---@static
---@param L System.IntPtr
---@param v System.ValueType
function m.PusNullable(L, v) end

---@static
---@param L System.IntPtr
---@param o any
---@param reference number
function m.PushUserData(L, o, reference) end

---@static
---@param L System.IntPtr
---@param type System.Type
---@return number
function m.LoadPreType(L, type) end

---@static
---@param L System.IntPtr
---@param o any
function m.PushSealed(L, o) end

---@static
---@param L System.IntPtr
---@param o any
function m.PushObject(L, o) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@param o any
function m.SetBack(L, stackPos, o) end

---@static
---@param L System.IntPtr
---@return number
function m.Destroy(L) end

---@overload fun(L:System.IntPtr, count:number) @static
---@static
---@param L System.IntPtr
---@param method string
---@param count number
function m.CheckArgsCount(L, method, count) end

---@overload fun(L:System.IntPtr, stackPos:number): @static
---@static
---@param t System.Type
---@param L System.IntPtr
---@param stackPos number
---@return fun(...:any|any[]):
function m.CheckDelegate(t, L, stackPos) end

LuaInterface.ToLua = m
return m
