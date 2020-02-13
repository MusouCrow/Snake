---@class LuaInterface.LuaTable : LuaInterface.LuaBaseRef
---@field public Item any
---@field public Item any
---@field public Length number
local m = {}

---@param index number
---@return any
function m:RawGetIndex(index) end

---@param index number
---@param value any
function m:RawSetIndex(index, value) end

---@param key any
---@return any
function m:RawGet(key) end

---@param key any
---@param arg any
function m:RawSet(key, arg) end

---@param key string
---@return any
function m:GetTable(key) end

---@param key string
---@param arg any
function m:SetTable(key, arg) end

---@param key string
---@return LuaInterface.LuaFunction
function m:RawGetLuaFunction(key) end

---@param key string
---@return LuaInterface.LuaFunction
function m:GetLuaFunction(key) end

---@overload fun(name:string, arg1:any)
---@overload fun(name:string, arg1:any, arg2:any)
---@overload fun(name:string, arg1:any, arg2:any, arg3:any)
---@overload fun(name:string, arg1:any, arg2:any, arg3:any, arg4:any)
---@overload fun(name:string, arg1:any, arg2:any, arg3:any, arg4:any, arg5:any)
---@overload fun(name:string, arg1:any, arg2:any, arg3:any, arg4:any, arg5:any, arg6:any)
---@param name string
function m:Call(name) end

---@overload fun(name:string, arg1:any):
---@overload fun(name:string, arg1:any, arg2:any):
---@overload fun(name:string, arg1:any, arg2:any, arg3:any):
---@overload fun(name:string, arg1:any, arg2:any, arg3:any, arg4:any):
---@overload fun(name:string, arg1:any, arg2:any, arg3:any, arg4:any, arg5:any):
---@overload fun(name:string, arg1:any, arg2:any, arg3:any, arg4:any, arg5:any, arg6:any):
---@param name string
---@return any
function m:Invoke(name) end

---@param name string
---@return string
function m:GetStringField(name) end

---@param name string
function m:AddTable(name) end

---@return any[]
function m:ToArray() end

---@virtual
---@return string
function m:ToString() end

---@return LuaInterface.LuaArrayTable
function m:ToArrayTable() end

---@overload fun():
---@return LuaInterface.LuaDictTable
function m:ToDictTable() end

---@return LuaInterface.LuaTable
function m:GetMetaTable() end

LuaInterface.LuaTable = m
return m
