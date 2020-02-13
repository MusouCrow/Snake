---@class LuaInterface.Lua_Debug : System.ValueType
---@field public eventcode number
---@field public _name System.IntPtr
---@field public _namewhat System.IntPtr
---@field public _what System.IntPtr
---@field public _source System.IntPtr
---@field public currentline number
---@field public nups number
---@field public linedefined number
---@field public lastlinedefined number
---@field public _short_src string
---@field public i_ci number
---@field public namewhat string
---@field public name string
---@field public what string
---@field public source string
---@field public short_src string
local m = {}

LuaInterface.Lua_Debug = m
return m
