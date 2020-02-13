---@class LuaInterface.StackTraits_1_T_ : System.Object
---@field public Push fun(arg1:System.IntPtr, arg2:any) @static
---@field public Check fun(arg1:System.IntPtr, arg2:number): @static
---@field public To fun(arg1:System.IntPtr, arg2:number): @static
local m = {}

---@static
---@param push fun(arg1:System.IntPtr, arg2:any)
---@param check fun(arg1:System.IntPtr, arg2:number):
---@param to fun(arg1:System.IntPtr, arg2:number):
function m.Init(push, check, to) end

LuaInterface.StackTraits_1_T_ = m
return m
