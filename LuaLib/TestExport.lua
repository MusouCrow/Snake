---@class TestExport : System.Object
---@field public field number
---@field public OnClick fun()
---@field public OnRefEvent fun(go:UnityEngine.GameObject):
---@field public buffer string
---@field public Number number
---@field public Item number
---@field public Item number
local m = {}

---@param tb fun(buffer:string)
function m:TestByteBuffer(tb) end

---@overload fun(o:any, str:string, n:number):
---@overload fun(c:number):
---@overload fun():
---@overload fun(b:boolean):
---@overload fun(objs:number[]):
---@overload fun(i:number):
---@overload fun(d:number):
---@overload fun():(, System.Int32)
---@overload fun(i:number, j:number):
---@overload fun(str:string):
---@overload fun(str1:string, str2:string): @static
---@overload fun(o:any):
---@overload fun(...:number|number[]):
---@overload fun():
---@overload fun(...:string|string[]):
---@overload fun():
---@overload fun(objs:string[], flag:boolean):
---@overload fun(...:any|any[]):
---@overload fun():
---@overload fun(e:TestExport.Space):
---@param o any
---@param str string
---@return number
function m:Test(o, str) end

---@param action System.Action_1_System_Int32_
---@return number, System.Action_1_System_Int32_
function m:Test33(action) end

---@param t UnityEngine.Component
---@return number
function m:TestGeneric(t) end

---@param e TestExport.Space
---@return number
function m:TestEnum(e) end

---@overload fun():
---@param ... number|number[]
---@return number
function m:TestCheckParamNumber(...) end

---@overload fun():
---@param ... string|string[]
---@return string
function m:TestCheckParamString(...) end

---@static
function m.TestReflection() end

---@static
---@param go UnityEngine.GameObject
---@return UnityEngine.GameObject
function m.TestRefGameObject(go) end

function m:DoClick() end

---@param v System.Nullable_1_UnityEngine_Vector3_
---@return System.Nullable_1_UnityEngine_Vector3_
function m:TestNullable(v) end

TestExport = m
return m
