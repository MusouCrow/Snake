---@class TestEventListener.VoidDelegate : System.MulticastDelegate
local m = {}

---@virtual
---@param go UnityEngine.GameObject
function m:Invoke(go) end

---@virtual
---@param go UnityEngine.GameObject
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(go, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

TestEventListener.VoidDelegate = m
return m
