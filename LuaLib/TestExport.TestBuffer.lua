---@class TestExport.TestBuffer : System.MulticastDelegate
local m = {}

---@virtual
---@param buffer string
function m:Invoke(buffer) end

---@virtual
---@param buffer string
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(buffer, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

TestExport.TestBuffer = m
return m
