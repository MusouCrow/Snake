---@class LuaInterface.LuaState : LuaInterface.LuaStatePtr
---@field public translator LuaInterface.ObjectTranslator
---@field public reflection LuaInterface.LuaReflection
---@field public OnDestroy fun()
---@field public ArrayMetatable number
---@field public DelegateMetatable number
---@field public TypeMetatable number
---@field public EnumMetatable number
---@field public IterMetatable number
---@field public EventMetatable number
---@field public PackBounds number
---@field public UnpackBounds number
---@field public PackRay number
---@field public UnpackRay number
---@field public PackRaycastHit number
---@field public PackTouch number
---@field public LogGC boolean
---@field public Item any
local m = {}

function m:Start() end

---@param open fun(luaState:System.IntPtr):
---@return number
function m:OpenLibs(open) end

function m:BeginPreLoad() end

function m:EndPreLoad() end

---@overload fun(name:string, func:fun(luaState:System.IntPtr):)
---@param name string
---@param func fun(luaState:System.IntPtr):
---@param type System.Type
function m:AddPreLoad(name, func, type) end

---@param name string
---@return number
function m:BeginPreModule(name) end

---@overload fun(L:System.IntPtr, reference:number)
---@param reference number
function m:EndPreModule(reference) end

---@param t System.Type
---@param func fun(luaState:System.IntPtr):
function m:BindPreModule(t, func) end

---@param t System.Type
---@return fun(luaState:System.IntPtr):
function m:GetPreModule(t) end

---@param name string
---@return boolean
function m:BeginModule(name) end

function m:EndModule() end

---@param reference number
---@return System.Type
function m:GetClassType(reference) end

---@overload fun():
---@static
---@param L System.IntPtr
---@return number
function m.Collect(L) end

---@static
---@param index number
---@return boolean
function m.GetInjectInitState(index) end

---@overload fun(t:System.Type, baseType:System.Type):
---@param t System.Type
---@param baseType System.Type
---@param name string
---@return number
function m:BeginClass(t, baseType, name) end

function m:EndClass() end

---@param t System.Type
---@return number
function m:BeginEnum(t) end

function m:EndEnum() end

---@param name string
function m:BeginStaticLibs(name) end

function m:EndStaticLibs() end

---@param name string
---@param func fun(luaState:System.IntPtr):
function m:RegFunction(name, func) end

---@param name string
---@param get fun(luaState:System.IntPtr):
---@param set fun(luaState:System.IntPtr):
function m:RegVar(name, get, set) end

---@overload fun(name:string, flag:boolean)
---@param name string
---@param d number
function m:RegConstant(name, d) end

---@static
---@param ptr System.IntPtr
---@return LuaInterface.LuaState
function m.Get(ptr) end

---@static
---@param ptr System.IntPtr
---@return LuaInterface.ObjectTranslator
function m.GetTranslator(ptr) end

---@static
---@param ptr System.IntPtr
---@return LuaInterface.LuaReflection
function m.GetReflection(ptr) end

---@overload fun(chunk:string)
---@overload fun(chunk:string, chunkName:string):
---@overload fun(chunk:string):
---@param chunk string
---@param chunkName string
function m:DoString(chunk, chunkName) end

---@overload fun(fileName:string):
---@param fileName string
function m:DoFile(fileName) end

---@overload fun(fileName:string):
---@param fileName string
function m:Require(fileName) end

function m:InitPackagePath() end

---@param fullPath string
function m:AddSearchPath(fullPath) end

---@param fullPath string
function m:RemoveSeachPath(fullPath) end

---@param reference number
---@return number
function m:BeginPCall(reference) end

---@param args number
---@param oldTop number
function m:PCall(args, oldTop) end

---@param oldTop number
function m:EndPCall(oldTop) end

---@param args any[]
function m:PushArgs(args) end

---@overload fun(name:string):
---@overload fun(reference:number):
---@param name string
---@param beLogMiss boolean
---@return LuaInterface.LuaFunction
function m:GetFunction(name, beLogMiss) end

---@overload fun(fullPath:string):
---@overload fun(reference:number):
---@param fullPath string
---@param beLogMiss boolean
---@return LuaInterface.LuaTable
function m:GetTable(fullPath, beLogMiss) end

---@param reference number
---@return LuaInterface.LuaThread
function m:GetLuaThread(reference) end

---@overload fun(func:LuaInterface.LuaFunction, self:LuaInterface.LuaTable):
---@param func LuaInterface.LuaFunction
---@return LuaInterface.LuaDelegate
function m:GetLuaDelegate(func) end

---@overload fun(target:LuaInterface.LuaDelegate, func:LuaInterface.LuaFunction, self:LuaInterface.LuaTable)
---@param target LuaInterface.LuaDelegate
---@param func LuaInterface.LuaFunction
function m:AddLuaDelegate(target, func) end

---@return boolean
function m:CheckTop() end

---@overload fun(d:number)
---@overload fun(un:number)
---@overload fun(n:number)
---@overload fun(s:number)
---@overload fun(us:number)
---@overload fun(l:number)
---@overload fun(ul:number)
---@overload fun(str:string)
---@overload fun(p:System.IntPtr)
---@overload fun(v3:UnityEngine.Vector3)
---@overload fun(v2:UnityEngine.Vector2)
---@overload fun(v4:UnityEngine.Vector4)
---@overload fun(clr:UnityEngine.Color)
---@overload fun(q:UnityEngine.Quaternion)
---@overload fun(ray:UnityEngine.Ray)
---@overload fun(bound:UnityEngine.Bounds)
---@overload fun(hit:UnityEngine.RaycastHit)
---@overload fun(touch:UnityEngine.Touch)
---@overload fun(bb:LuaInterface.LuaByteBuffer)
---@overload fun(lbr:LuaInterface.LuaBaseRef)
---@overload fun(array:System.Array)
---@overload fun(t:System.Type)
---@overload fun(ev:fun(...:any|any[]):)
---@overload fun(e:System.Enum)
---@overload fun(iter:System.Collections.IEnumerator)
---@overload fun(obj:UnityEngine.Object)
---@overload fun(tracker:UnityEngine.TrackedReference)
---@param b boolean
function m:Push(b) end

---@param mask UnityEngine.LayerMask
function m:PushLayerMask(mask) end

---@overload fun(buffer:string, len:number)
---@param buffer string
function m:PushByteBuffer(buffer) end

---@param e System.Enum
---@return any
function m:GetEnumObj(e) end

---@param obj any
function m:PushVariant(obj) end

---@param obj any
function m:PushObject(obj) end

---@param o any
function m:PushSealed(o) end

---@param v System.ValueType
function m:PushValue(v) end

---@param o any
function m:PushGeneric(o) end

---@param stackPos number
---@return UnityEngine.Vector3
function m:CheckVector3(stackPos) end

---@param stackPos number
---@return UnityEngine.Quaternion
function m:CheckQuaternion(stackPos) end

---@param stackPos number
---@return UnityEngine.Vector2
function m:CheckVector2(stackPos) end

---@param stackPos number
---@return UnityEngine.Vector4
function m:CheckVector4(stackPos) end

---@param stackPos number
---@return UnityEngine.Color
function m:CheckColor(stackPos) end

---@param stackPos number
---@return UnityEngine.Ray
function m:CheckRay(stackPos) end

---@param stackPos number
---@return UnityEngine.Bounds
function m:CheckBounds(stackPos) end

---@param stackPos number
---@return UnityEngine.LayerMask
function m:CheckLayerMask(stackPos) end

---@param stackPos number
---@return number
function m:CheckLong(stackPos) end

---@param stackPos number
---@return number
function m:CheckULong(stackPos) end

---@param stackPos number
---@return string
function m:CheckString(stackPos) end

---@param stackPos number
---@return fun(...:any|any[]):
function m:CheckDelegate(stackPos) end

---@param stackPos number
---@return number[]
function m:CheckCharBuffer(stackPos) end

---@param stackPos number
---@return string
function m:CheckByteBuffer(stackPos) end

---@param stackPos number
---@return System.ValueType[]
function m:CheckNumberArray(stackPos) end

---@param stackPos number
---@param type System.Type
---@return any
function m:CheckObject(stackPos, type) end

---@param stackPos number
---@param type System.Type
---@return any
function m:CheckVarObject(stackPos, type) end

---@param oldTop number
---@return any[]
function m:CheckObjects(oldTop) end

---@param stackPos number
---@return LuaInterface.LuaFunction
function m:CheckLuaFunction(stackPos) end

---@param stackPos number
---@return LuaInterface.LuaTable
function m:CheckLuaTable(stackPos) end

---@param stackPos number
---@return LuaInterface.LuaThread
function m:CheckLuaThread(stackPos) end

---@param stackPos number
---@return any
function m:CheckValue(stackPos) end

---@param stackPos number
---@return any
function m:ToVariant(stackPos) end

---@overload fun(reference:number, name:string)
---@param reference number
---@param name string
---@param isGCThread boolean
function m:CollectRef(reference, name, isGCThread) end

---@param br LuaInterface.LuaBaseRef
function m:DelayDispose(br) end

function m:StepCollect() end

function m:RefreshDelegateMap() end

---@overload fun(narr:number, nrec:number):
---@overload fun(narr:number):
---@overload fun():
---@param fullPath string
function m:NewTable(fullPath) end

---@param moduleFileName string
function m:ReLoad(moduleFileName) end

---@param t System.Type
---@return number
function m:GetMetaReference(t) end

---@param t System.Type
---@return number
function m:GetMissMetaReference(t) end

---@virtual
function m:Dispose() end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@static
---@param a LuaInterface.LuaState
---@param b LuaInterface.LuaState
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a LuaInterface.LuaState
---@param b LuaInterface.LuaState
---@return boolean
function m.op_Inequality(a, b) end

---@param name string
function m:PrintTable(name) end

---@param name string
---@param top number
---@param beLogMiss boolean
---@return boolean
function m:BeginCall(name, top, beLogMiss) end

---@overload fun(name:string, beLogMiss:boolean)
---@overload fun(name:string, arg1:any, beLogMiss:boolean)
---@overload fun(name:string, arg1:any, arg2:any, beLogMiss:boolean)
---@overload fun(name:string, arg1:any, arg2:any, arg3:any, beLogMiss:boolean)
---@overload fun(name:string, arg1:any, arg2:any, arg3:any, arg4:any, beLogMiss:boolean)
---@overload fun(name:string, arg1:any, arg2:any, arg3:any, arg4:any, arg5:any, beLogMiss:boolean)
---@overload fun(name:string, arg1:any, arg2:any, arg3:any, arg4:any, arg5:any, arg6:any, beLogMiss:boolean)
---@param nArgs number
---@param errfunc number
---@param top number
function m:Call(nArgs, errfunc, top) end

---@overload fun(name:string, arg1:any, beLogMiss:boolean):
---@overload fun(name:string, arg1:any, arg2:any, beLogMiss:boolean):
---@overload fun(name:string, arg1:any, arg2:any, arg3:any, beLogMiss:boolean):
---@overload fun(name:string, arg1:any, arg2:any, arg3:any, arg4:any, beLogMiss:boolean):
---@overload fun(name:string, arg1:any, arg2:any, arg3:any, arg4:any, arg5:any, beLogMiss:boolean):
---@overload fun(name:string, arg1:any, arg2:any, arg3:any, arg4:any, arg5:any, arg6:any, beLogMiss:boolean):
---@param name string
---@param beLogMiss boolean
---@return any
function m:Invoke(name, beLogMiss) end

LuaInterface.LuaState = m
return m
