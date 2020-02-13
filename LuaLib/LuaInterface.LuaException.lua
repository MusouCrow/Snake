---@class LuaInterface.LuaException : System.Exception
---@field public luaStack System.Exception @static
---@field public projectFolder string @static
---@field public InstantiateCount number @static
---@field public SendMsgCount number @static
---@field public L System.IntPtr @static
---@field public StackTrace string
local m = {}

---@static
---@return System.Exception
function m.GetLastError() end

---@overload fun(trace:System.Diagnostics.StackTrace, sb:System.Text.StringBuilder) @static
---@static
---@param trace System.Diagnostics.StackTrace
---@param sb System.Text.StringBuilder
---@param skip System.Diagnostics.StackTrace
function m.ExtractFormattedStackTrace(trace, sb, skip) end

---@static
---@param L0 System.IntPtr
function m.Init(L0) end

LuaInterface.LuaException = m
return m
