---@class Game.System : UnityEngine.MonoBehaviour
---@field public IS_OVER boolean @static
local m = {}

---@static
---@param value fun()
function m.add_MoveTickEvent(value) end

---@static
---@param value fun()
function m.remove_MoveTickEvent(value) end

---@static
---@return number
function m.AdjustInterval() end

Game.System = m
return m
