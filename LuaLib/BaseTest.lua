---@class BaseTest : System.Object
---@field public PropertyTest number
local m = {}

---@virtual
---@param count System.Int32
---@return number, System.Int32
function m:TestRef(count) end

BaseTest = m
return m
