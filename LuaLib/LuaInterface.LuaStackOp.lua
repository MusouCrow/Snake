---@class LuaInterface.LuaStackOp : System.Object
local m = {}

---@param L System.IntPtr
---@param stackPos number
---@return number
function m:ToSByte(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number
function m:ToByte(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number
function m:ToInt16(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number
function m:ToUInt16(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number
function m:ToChar(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number
function m:ToInt32(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number
function m:ToUInt32(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Decimal
function m:ToDecimal(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number
function m:ToFloat(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return LuaInterface.LuaByteBuffer
function m:ToLuaByteBuffer(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Collections.IEnumerator
function m:ToIter(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Type
function m:ToType(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return LuaInterface.EventObject
function m:ToEventObject(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Transform
function m:ToTransform(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.GameObject
function m:ToGameObject(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return any
function m:ToObject(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number
function m:CheckSByte(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number
function m:CheckByte(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number
function m:CheckInt16(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number
function m:CheckUInt16(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number
function m:CheckChar(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number
function m:CheckInt32(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number
function m:CheckUInt32(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Decimal
function m:CheckDecimal(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number
function m:CheckFloat(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.IntPtr
function m:CheckIntPtr(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.UIntPtr
function m:CheckUIntPtr(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return LuaInterface.LuaByteBuffer
function m:CheckLuaByteBuffer(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return LuaInterface.EventObject
function m:CheckEventObject(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Transform
function m:CheckTransform(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.GameObject
function m:CheckGameObject(L, stackPos) end

---@overload fun(L:System.IntPtr, n:number)
---@overload fun(L:System.IntPtr, n:number)
---@overload fun(L:System.IntPtr, n:number)
---@overload fun(L:System.IntPtr, n:number)
---@overload fun(L:System.IntPtr, n:number)
---@overload fun(L:System.IntPtr, n:number)
---@overload fun(L:System.IntPtr, n:System.Decimal)
---@overload fun(L:System.IntPtr, n:number)
---@overload fun(L:System.IntPtr, p:System.UIntPtr)
---@overload fun(L:System.IntPtr, ev:fun(...:any|any[]):)
---@overload fun(L:System.IntPtr, obj:any)
---@overload fun(L:System.IntPtr, o:UnityEngine.GameObject)
---@overload fun(L:System.IntPtr, o:UnityEngine.Transform)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_System_SByte_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_System_Byte_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_System_Int16_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_System_UInt16_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_System_Char_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_System_Int32_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_System_UInt32_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_System_Decimal_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_System_Single_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_System_Double_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_System_Boolean_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_System_Int64_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_System_UInt64_)
---@overload fun(L:System.IntPtr, v3:System.Nullable_1_UnityEngine_Vector3_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_UnityEngine_Quaternion_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_UnityEngine_Vector2_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_UnityEngine_Color_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_UnityEngine_Vector4_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_UnityEngine_Ray_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_UnityEngine_Bounds_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_UnityEngine_LayerMask_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_UnityEngine_Touch_)
---@overload fun(L:System.IntPtr, n:System.Nullable_1_UnityEngine_RaycastHit_)
---@param L System.IntPtr
---@param n number
function m:Push(L, n) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_SByte_
function m:ToNullSByte(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_Byte_
function m:ToNullByte(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_Int16_
function m:ToNullInt16(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_UInt16_
function m:ToNullUInt16(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_Char_
function m:ToNullChar(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_Int32_
function m:ToNullInt32(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_UInt32_
function m:ToNullUInt32(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_Decimal_
function m:ToNullDecimal(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_Single_
function m:ToNullFloat(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_Double_
function m:ToNullNumber(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_Boolean_
function m:ToNullBool(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_Int64_
function m:ToNullInt64(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_UInt64_
function m:ToNullUInt64(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number[]
function m:ToSByteArray(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number[]
function m:ToInt16Array(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number[]
function m:ToUInt16Array(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Decimal[]
function m:ToDecimalArray(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number[]
function m:ToFloatArray(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number[]
function m:ToDoubleArray(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number[]
function m:ToInt32Array(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number[]
function m:ToUInt32Array(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number[]
function m:ToInt64Array(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number[]
function m:ToUInt64Array(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_UnityEngine_Vector3_
function m:ToNullVec3(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_UnityEngine_Quaternion_
function m:ToNullQuat(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_UnityEngine_Vector2_
function m:ToNullVec2(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_UnityEngine_Color_
function m:ToNullColor(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_UnityEngine_Vector4_
function m:ToNullVec4(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_UnityEngine_Ray_
function m:ToNullRay(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_UnityEngine_Bounds_
function m:ToNullBounds(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_UnityEngine_LayerMask_
function m:ToNullLayerMask(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Vector3[]
function m:ToVec3Array(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Quaternion[]
function m:ToQuatArray(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Vector2[]
function m:ToVec2Array(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Color[]
function m:ToColorArray(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Vector4[]
function m:ToVec4Array(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Type[]
function m:ToTypeArray(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_SByte_
function m:CheckNullSByte(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_Byte_
function m:CheckNullByte(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_Int16_
function m:CheckNullInt16(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_UInt16_
function m:CheckNullUInt16(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_Char_
function m:CheckNullChar(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_Int32_
function m:CheckNullInt32(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_UInt32_
function m:CheckNullUInt32(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_Decimal_
function m:CheckNullDecimal(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_Single_
function m:CheckNullFloat(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_Double_
function m:CheckNullNumber(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_Boolean_
function m:CheckNullBool(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_Int64_
function m:CheckNullInt64(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_System_UInt64_
function m:CheckNullUInt64(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number[]
function m:CheckSByteArray(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number[]
function m:CheckInt16Array(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number[]
function m:CheckUInt16Array(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Decimal[]
function m:CheckDecimalArray(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number[]
function m:CheckFloatArray(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number[]
function m:CheckDoubleArray(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number[]
function m:CheckInt32Array(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number[]
function m:CheckUInt32Array(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number[]
function m:CheckInt64Array(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return number[]
function m:CheckUInt64Array(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_UnityEngine_Vector3_
function m:CheckNullVec3(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_UnityEngine_Quaternion_
function m:CheckNullQuat(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_UnityEngine_Vector2_
function m:CheckNullVec2(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_UnityEngine_Color_
function m:CheckNullColor(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_UnityEngine_Vector4_
function m:CheckNullVec4(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_UnityEngine_Ray_
function m:CheckNullRay(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_UnityEngine_Bounds_
function m:CheckNullBounds(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Nullable_1_UnityEngine_LayerMask_
function m:CheckNullLayerMask(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Vector3[]
function m:CheckVec3Array(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Quaternion[]
function m:CheckQuatArray(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Vector2[]
function m:CheckVec2Array(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Color[]
function m:CheckColorArray(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return UnityEngine.Vector4[]
function m:CheckVec4Array(L, stackPos) end

---@param L System.IntPtr
---@param stackPos number
---@return System.Type[]
function m:CheckTypeArray(L, stackPos) end

LuaInterface.LuaStackOp = m
return m
