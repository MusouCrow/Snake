---@class System.Runtime.Remoting.Metadata.W3cXsd2001.SoapMonthDay : System.Object
---@field public XsdType string @static
---@field public Value System.DateTime
local m = {}

---@virtual
---@return string
function m:GetXsdType() end

---@static
---@param value string
---@return System.Runtime.Remoting.Metadata.W3cXsd2001.SoapMonthDay
function m.Parse(value) end

---@virtual
---@return string
function m:ToString() end

System.Runtime.Remoting.Metadata.W3cXsd2001.SoapMonthDay = m
return m
