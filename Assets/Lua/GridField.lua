local GameObject = UnityEngine.GameObject
local Camera = UnityEngine.Camera
local Gizmos = UnityEngine.Gizmos
local Vector3 = UnityEngine.Vector3
local GridUtility = Game.GridUtility


---@class GridField
GridField = require("Lib.Class")()

function GridField:Ctor(obj)
    self.obj = obj
end

function GridField:Start()
    local obj = self.obj

    print("camera", Camera.main.orthographicSize)

    --obj.width = Camera.main.orthographicSize / 9 * 16 --这里获取不了orthographicSize
    --obj.height = Camera.main.orthographicSize
end

function GridField:OnDrawGizmos(ASPECT_W, ASPECT_H)
    --[[
    local obj = self.obj

    for k =  -ASPECT_W + 1, ASPECT_W do
        Gizmos.DrawLine(Vector3(k * GridUtility.SIZE, -obj.height, 0 ), Vector3(k * GridUtility.SIZE, obj.height, 0 ))
    end

    for k =  -ASPECT_H, ASPECT_H do
        Gizmos.DrawLine(Vector3(-obj.width, k * GridUtility.SIZE, 0 ), Vector3( obj.width, k * GridUtility.SIZE, 0 ))
    end
    ]]--
end
