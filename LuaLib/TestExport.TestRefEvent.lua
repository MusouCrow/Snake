---@class TestExport.TestRefEvent : System.MulticastDelegate
local m = {}

---@virtual
---@param go UnityEngine.GameObject
---@return UnityEngine.GameObject
function m:Invoke(go) end

---@virtual
---@param go UnityEngine.GameObject
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult, UnityEngine.GameObject
function m:BeginInvoke(go, callback, object) end

---@virtual
---@param go UnityEngine.GameObject
---@param result System.IAsyncResult
---@return UnityEngine.GameObject
function m:EndInvoke(go, result) end

TestExport.TestRefEvent = m
return m
