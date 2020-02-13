---@class Game.Lua : System.Object
---@field public state LuaInterface.LuaState @static
local m = {}

---@static
function m.Init() end

---@static
---@param name string
function m.Require(name) end

---@static
function m.Update() end

Game.Lua = m
return m
