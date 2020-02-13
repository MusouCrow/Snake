---@class ToLuaInjectionTest : BaseTest
---@field public PropertyTest number
local m = {}

---@virtual
---@param count System.Int32
---@return number, System.Int32
function m:TestRef(count) end

---@overload fun(param1:number, param2:System.Boolean):
---@overload fun(param1:boolean, param2:number)
---@param param1 number
---@param param2 boolean
function m:TestOverload(param1, param2) end

---@param param1 boolean
---@param param2 number
function m:NoInject(param1, param2) end

---@param param1 boolean
---@param param2 number
function m:Inject(param1, param2) end

---@param delay number
---@return System.Collections.IEnumerator
function m:TestCoroutine(delay) end

ToLuaInjectionTest = m
return m
