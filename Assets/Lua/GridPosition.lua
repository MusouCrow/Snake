
local GameObject = UnityEngine.GameObject
local Vector2Int = UnityEngine.Vector2Int
local Input = UnityEngine.Input
local KesCode = UnityEngine.KeyCode
local GridField = Game.GridField
local GridUtility = Game.GridUtility

---@class GridPosition
GridPosition = require("Lib.Class")()

function GridPosition:Ctor(obj)
    self.obj = obj
   
end

function GridPosition:Awake()
    local obj = self.obj
    
    self:AdjustPosition();      
end

function GridPosition:AdjustPosition()
    local obj = self.obj

    if(obj.x > GridField.ASPECT_W - 1) then
        obj.x = -GridField.ASPECT_W
    elseif (obj.x < -GridField.ASPECT_W) then
        obj.x = GridField.ASPECT_W - 1
    end

    if(obj.y > GridField.ASPECT_H - 1) then
        obj.y = -GridField.ASPECT_H
    elseif (obj.y < -GridField.ASPECT_H) then
        obj.y = GridField.ASPECT_H - 1
    end

    obj.transform.position = GridUtility.ToPosition(obj.x, obj.y)
 
end



function  GridPosition:Update()
    local obj = self.obj 

    if(Input.GetKeyDown(KesCode.Space)) then
        obj.Position = Vector2Int(obj.x, obj.y)
    end
end