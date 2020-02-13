---@class Game.ScrollCircle : UnityEngine.UI.ScrollRect
local m = {}

---@virtual
---@param eventData UnityEngine.EventSystems.PointerEventData
function m:OnDrag(eventData) end

Game.ScrollCircle = m
return m
