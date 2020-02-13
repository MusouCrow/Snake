---@class LuaInterface.LuaMethodCache : System.Object
---@field public dict table<System.Type, System.Collections.Generic.Dictionary_2_System_String_System_Collections_Generic_List_1_System_Reflection_MethodInfo__> @static
local m = {}

---@overload fun(name:string, obj:any): @static
---@static
---@param name string
---@param obj any
---@param ... any|any[]
---@return any
function m.CallSingleMethod(name, obj, ...) end

---@overload fun(name:string, obj:any): @static
---@static
---@param name string
---@param obj any
---@param ... any|any[]
---@return any
function m.CallMethod(name, obj, ...) end

LuaInterface.LuaMethodCache = m
return m
