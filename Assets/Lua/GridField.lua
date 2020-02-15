local GameObject = UnityEngine.GameObject
local Camera = UnityEngine.Camera


---@class GridField
GridField = require("Lib.Class")()

function GridField:Ctor(obj)
    self.obj = obj
end

function GridField:Start()
    local obj = self.obj

    obj.width = Camera.mian.orthographicSize / 9 * 16
    obj.height = Camera.mian.orthographicSize
end
