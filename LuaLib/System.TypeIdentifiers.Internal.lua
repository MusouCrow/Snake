---@class System.TypeIdentifiers.Internal : System.TypeNames.ATypeName
---@field public DisplayName string
---@field public InternalName string
local m = {}

---@virtual
---@param innerName System.TypeIdentifier
---@return System.TypeName
function m:NestedName(innerName) end

System.TypeIdentifiers.Internal = m
return m
