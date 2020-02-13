---@class System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_TimeSpan_ : System.Diagnostics.Tracing.TraceLoggingTypeInfo
---@field public Instance System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_TimeSpan_ @static
local m = {}

---@abstract
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value System.TimeSpan
---@return System.TimeSpan
function m:WriteData(collector, value) end

---@virtual
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value any
function m:WriteObjectData(collector, value) end

System.Diagnostics.Tracing.TraceLoggingTypeInfo_1_System_TimeSpan_ = m
return m