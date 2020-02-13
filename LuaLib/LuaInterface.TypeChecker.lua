---@class LuaInterface.TypeChecker : System.Object
---@field public LuaValueTypeMap System.Type[] @static
local m = {}

---@static
---@param t System.Type
---@return boolean
function m.IsValueType(t) end

---@overload fun(L:System.IntPtr, begin:number, type0:System.Type, type1:System.Type): @static
---@overload fun(L:System.IntPtr, begin:number, type0:System.Type, type1:System.Type, type2:System.Type): @static
---@overload fun(L:System.IntPtr, begin:number, type0:System.Type, type1:System.Type, type2:System.Type, type3:System.Type): @static
---@overload fun(L:System.IntPtr, begin:number, type0:System.Type, type1:System.Type, type2:System.Type, type3:System.Type, type4:System.Type): @static
---@overload fun(L:System.IntPtr, begin:number, type0:System.Type, type1:System.Type, type2:System.Type, type3:System.Type, type4:System.Type, type5:System.Type): @static
---@overload fun(L:System.IntPtr, begin:number, type0:System.Type, type1:System.Type, type2:System.Type, type3:System.Type, type4:System.Type, type5:System.Type, type6:System.Type): @static
---@overload fun(L:System.IntPtr, begin:number, type0:System.Type, type1:System.Type, type2:System.Type, type3:System.Type, type4:System.Type, type5:System.Type, type6:System.Type, type7:System.Type): @static
---@overload fun(L:System.IntPtr, begin:number, type0:System.Type, type1:System.Type, type2:System.Type, type3:System.Type, type4:System.Type, type5:System.Type, type6:System.Type, type7:System.Type, type8:System.Type): @static
---@overload fun(L:System.IntPtr, begin:number, type0:System.Type, type1:System.Type, type2:System.Type, type3:System.Type, type4:System.Type, type5:System.Type, type6:System.Type, type7:System.Type, type8:System.Type, type9:System.Type): @static
---@overload fun(L:System.IntPtr, begin:number, ...:System.Type|System.Type[]): @static
---@overload fun(L:System.IntPtr, begin:number): @static
---@overload fun(L:System.IntPtr, pos:number): @static
---@overload fun(L:System.IntPtr, pos:number): @static
---@overload fun(L:System.IntPtr, pos:number): @static
---@overload fun(L:System.IntPtr, pos:number): @static
---@overload fun(L:System.IntPtr, pos:number): @static
---@overload fun(L:System.IntPtr, pos:number): @static
---@overload fun(L:System.IntPtr, pos:number): @static
---@overload fun(L:System.IntPtr, pos:number): @static
---@overload fun(L:System.IntPtr, pos:number): @static
---@overload fun(L:System.IntPtr, pos:number): @static
---@overload fun(L:System.IntPtr, pos:number): @static
---@overload fun(L:System.IntPtr, pos:number): @static
---@static
---@param L System.IntPtr
---@param begin number
---@param type0 System.Type
---@return boolean
function m.CheckTypes(L, begin, type0) end

---@overload fun(L:System.IntPtr, begin:number, count:number): @static
---@static
---@param L System.IntPtr
---@param t System.Type
---@param begin number
---@param count number
---@return boolean
function m.CheckParamsType(L, t, begin, count) end

---@static
---@param t System.Type
---@return boolean
function m.IsNullable(t) end

---@static
---@param t System.Type
---@return System.Type
function m.GetNullableType(t) end

---@static
---@param L System.IntPtr
---@param type System.Type
---@param pos number
---@return boolean
function m.CheckType(L, type, pos) end

---@overload fun(temp:any, type:System.Type): @static
---@static
---@param temp any
---@param type System.Type
---@return any
function m.ChangeType(temp, type) end

---@static
---@param t System.Type
---@return boolean
function m.IsNumberType(t) end

---@static
---@param t System.Type
---@param L System.IntPtr
---@param pos number
---@return boolean
function m.IsUserTable(t, L, pos) end

---@static
---@param type System.Type
---@param L System.IntPtr
---@param pos number
---@return boolean
function m.CheckDelegateType(type, L, pos) end

---@static
---@param type System.Type
---@param L System.IntPtr
---@param pos number
---@return boolean
function m.CheckEnumType(type, L, pos) end

LuaInterface.TypeChecker = m
return m
