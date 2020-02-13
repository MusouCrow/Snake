---@class LuaInterface.LuaFileUtils : System.Object
---@field public Instance LuaInterface.LuaFileUtils @static
---@field public beZip boolean
local m = {}

---@virtual
function m:Dispose() end

---@overload fun(path:string):
---@param path string
---@param front boolean
---@return boolean
function m:AddSearchPath(path, front) end

---@param path string
---@return boolean
function m:RemoveSearchPath(path) end

---@param name string
---@param bundle UnityEngine.AssetBundle
function m:AddSearchBundle(name, bundle) end

---@param fileName string
---@return string
function m:FindFile(fileName) end

---@virtual
---@param fileName string
---@return string
function m:ReadFile(fileName) end

---@virtual
---@param fileName string
---@return string
function m:FindFileError(fileName) end

---@static
---@return string
function m.GetOSDir() end

LuaInterface.LuaFileUtils = m
return m
