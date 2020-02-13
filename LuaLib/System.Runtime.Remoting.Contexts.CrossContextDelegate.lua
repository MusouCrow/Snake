---@class System.Runtime.Remoting.Contexts.CrossContextDelegate : System.MulticastDelegate
local m = {}

---@virtual
function m:Invoke() end

---@virtual
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

System.Runtime.Remoting.Contexts.CrossContextDelegate = m
return m
