---@class DelegateFactory : System.Object
---@field public dict table<System.Type, fun(func:LuaInterface.LuaFunction, self:LuaInterface.LuaTable, flag:boolean):> @static
local m = {}

---@static
function m.Init() end

---@static
function m.Register() end

---@overload fun(t:System.Type): @static
---@overload fun(t:System.Type, func:LuaInterface.LuaFunction, self:LuaInterface.LuaTable): @static
---@static
---@param t System.Type
---@param func LuaInterface.LuaFunction
---@return fun(...:any|any[]):
function m.CreateDelegate(t, func) end

---@overload fun(obj:fun(...:any|any[]):, dg:fun(...:any|any[]):): @static
---@static
---@param obj fun(...:any|any[]):
---@param func LuaInterface.LuaFunction
---@return fun(...:any|any[]):
function m.RemoveDelegate(obj, func) end

---@param func LuaInterface.LuaFunction
---@param self LuaInterface.LuaTable
---@param flag boolean
---@return fun()
function m:System_Action(func, self, flag) end

---@param func LuaInterface.LuaFunction
---@param self LuaInterface.LuaTable
---@param flag boolean
---@return fun()
function m:UnityEngine_Events_UnityAction(func, self, flag) end

---@param func LuaInterface.LuaFunction
---@param self LuaInterface.LuaTable
---@param flag boolean
---@return fun(obj:number):
function m:System_Predicate_int(func, self, flag) end

---@param func LuaInterface.LuaFunction
---@param self LuaInterface.LuaTable
---@param flag boolean
---@return fun(obj:number)
function m:System_Action_int(func, self, flag) end

---@param func LuaInterface.LuaFunction
---@param self LuaInterface.LuaTable
---@param flag boolean
---@return fun(x:number, y:number):
function m:System_Comparison_int(func, self, flag) end

---@param func LuaInterface.LuaFunction
---@param self LuaInterface.LuaTable
---@param flag boolean
---@return fun(arg:number):
function m:System_Func_int_int(func, self, flag) end

---@param func LuaInterface.LuaFunction
---@param self LuaInterface.LuaTable
---@param flag boolean
---@return fun(cam:UnityEngine.Camera)
function m:UnityEngine_Camera_CameraCallback(func, self, flag) end

---@param func LuaInterface.LuaFunction
---@param self LuaInterface.LuaTable
---@param flag boolean
---@return fun(advertisingId:string, trackingEnabled:boolean, errorMsg:string)
function m:UnityEngine_Application_AdvertisingIdentifierCallback(func, self, flag) end

---@param func LuaInterface.LuaFunction
---@param self LuaInterface.LuaTable
---@param flag boolean
---@return fun()
function m:UnityEngine_Application_LowMemoryCallback(func, self, flag) end

---@param func LuaInterface.LuaFunction
---@param self LuaInterface.LuaTable
---@param flag boolean
---@return fun(condition:string, stackTrace:string, type:UnityEngine.LogType)
function m:UnityEngine_Application_LogCallback(func, self, flag) end

---@param func LuaInterface.LuaFunction
---@param self LuaInterface.LuaTable
---@param flag boolean
---@return fun(obj:boolean)
function m:System_Action_bool(func, self, flag) end

---@param func LuaInterface.LuaFunction
---@param self LuaInterface.LuaTable
---@param flag boolean
---@return fun():
function m:System_Func_bool(func, self, flag) end

---@param func LuaInterface.LuaFunction
---@param self LuaInterface.LuaTable
---@param flag boolean
---@return fun(data:number[])
function m:UnityEngine_AudioClip_PCMReaderCallback(func, self, flag) end

---@param func LuaInterface.LuaFunction
---@param self LuaInterface.LuaTable
---@param flag boolean
---@return fun(position:number)
function m:UnityEngine_AudioClip_PCMSetPositionCallback(func, self, flag) end

---@param func LuaInterface.LuaFunction
---@param self LuaInterface.LuaTable
---@param flag boolean
---@return fun(obj:UnityEngine.AsyncOperation)
function m:System_Action_UnityEngine_AsyncOperation(func, self, flag) end

DelegateFactory = m
return m
