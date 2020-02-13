---@class LuaInterface.LuaMatchType : System.Object
local m = {}

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckNumber(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckBool(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckLong(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckULong(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckNullNumber(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckNullBool(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckNullLong(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckNullULong(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckString(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckByteArray(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckCharArray(L, pos) end

---@param t System.Type
---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckArray(t, L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckBoolArray(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckSByteArray(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckInt16Array(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckUInt16Array(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckDecimalArray(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckSingleArray(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckDoubleArray(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckInt32Array(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckUInt32Array(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckInt64Array(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckUInt64Array(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckStringArray(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckTypeArray(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckObjectArray(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckVec3(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckQuat(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckVec2(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckColor(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckVec4(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckRay(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckBounds(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckTouch(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckLayerMask(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckRaycastHit(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckNullVec3(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckNullQuat(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckNullVec2(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckNullColor(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckNullVec4(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckNullRay(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckNullBounds(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckNullTouch(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckNullLayerMask(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckNullRaycastHit(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckVec3Array(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckQuatArray(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckVec2Array(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckVec4Array(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckColorArray(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckPtr(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckLuaFunc(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckLuaTable(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckLuaThread(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckLuaBaseRef(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckByteBuffer(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckEventObject(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckEnumerator(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckGameObject(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckTransform(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckMonoType(L, pos) end

---@param L System.IntPtr
---@param pos number
---@return boolean
function m:CheckVariant(L, pos) end

LuaInterface.LuaMatchType = m
return m
