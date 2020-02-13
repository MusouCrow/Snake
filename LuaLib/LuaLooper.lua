---@class LuaLooper : UnityEngine.MonoBehaviour
---@field public luaState LuaInterface.LuaState
---@field public UpdateEvent LuaInterface.LuaBeatEvent
---@field public LateUpdateEvent LuaInterface.LuaBeatEvent
---@field public FixedUpdateEvent LuaInterface.LuaBeatEvent
local m = {}

function m:Destroy() end

LuaLooper = m
return m
