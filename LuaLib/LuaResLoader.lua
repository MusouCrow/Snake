---@class LuaResLoader : LuaInterface.LuaFileUtils
local m = {}

---@virtual
---@param fileName string
---@return string
function m:ReadFile(fileName) end

---@virtual
---@param fileName string
---@return string
function m:FindFileError(fileName) end

LuaResLoader = m
return m
