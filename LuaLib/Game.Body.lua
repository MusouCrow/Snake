---@class Game.Body : UnityEngine.MonoBehaviour
---@field public Count number @static
---@field public prebody Game.Body
---@field public afterbody Game.Body
---@field public laterPosition UnityEngine.Vector2
local m = {}

function m:Bore() end

Game.Body = m
return m
