local Mathf = UnityEngine.Mathf
local Random = UnityEngine.Random
local GameObject = UnityEngine.GameObject
local Vector2Int = UnityEngine.Vector2Int
local GridPosition = Game.GridPosition
local GridField = Game.GridField
local Factory = Game.Factory

---@class Food
Food = require("Lib.Class")()

function Food:Ctor(obj)
    self.obj = obj
    self:Awake()
end

function Food:Awake()
    local obj = self.obj

    obj.gridPosition = obj.gameObject:GetComponent(typeof(GridPosition))

    local w = Mathf.Lerp(GridField.ASPECT_W - 1, -GridField.ASPECT_W + 1, math.random())
    local h = Mathf.Lerp(GridField.ASPECT_H - 1, -GridField.ASPECT_H + 1, math.random())
    
    obj.gridPosition.Position = Vector2Int(math.floor(w), math.floor(h))
end

function Food:OnTriggerEnter2D(collider)
    Factory.FoodCount = Factory.FoodCount - 1 
    print(self)
    print(self.obj)
    print(self.obj.gameObject)
    --GameObject.Destroy(self.obj.gameObject)
end
