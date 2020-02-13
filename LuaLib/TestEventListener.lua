---@class TestEventListener : UnityEngine.MonoBehaviour
---@field public onClick fun(go:UnityEngine.GameObject)
---@field public TestFunc fun():
local m = {}

---@param value fun(go:UnityEngine.GameObject)
function m:add_onClickEvent(value) end

---@param value fun(go:UnityEngine.GameObject)
function m:remove_onClickEvent(value) end

---@overload fun(click:fun(go:UnityEngine.GameObject))
---@param click fun(go:UnityEngine.GameObject)
function m:SetOnFinished(click) end

---@param go UnityEngine.GameObject
function m:OnClickEvent(go) end

TestEventListener = m
return m
