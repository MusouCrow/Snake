---@class LuaClient : UnityEngine.MonoBehaviour
---@field public Instance LuaClient @static
local m = {}

---@overload fun()
---@param ip string
function m:OpenZbsDebugger(ip) end

---@virtual
function m:Destroy() end

---@static
---@return LuaInterface.LuaState
function m.GetMainState() end

---@return LuaLooper
function m:GetLooper() end

function m:AttachProfiler() end

function m:DetachProfiler() end

LuaClient = m
return m
