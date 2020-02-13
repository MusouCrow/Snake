---@class LuaInterface.LuaByteBuffer : System.ValueType
---@field public buffer string
---@field public Length number
local m = {}

---@static
---@param stream System.IO.MemoryStream
---@return LuaInterface.LuaByteBuffer
function m.op_Implicit(stream) end

LuaInterface.LuaByteBuffer = m
return m
