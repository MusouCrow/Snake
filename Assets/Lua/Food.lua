local Mathf = UnityEngine.Mathf
local Random = UnityEngine.Random
local GameObject = UnityEngine.GameObject
local Vector2Int = UnityEngine.Vector2Int
local GridPosition = Game.GridPosition
local GridField = Game.GridField

---@class Food
---@field protected gameObject GameObject
---@field protected gridPosition GridPosition
Food = require("Lib.Class")()

function Food:Ctor(gameObject)
    self.gameObject = gameObject

    self:Awake()
end

function Food:Awake()
    self.gridPosition = self.gameObject:GetComponent(typeof(GridPosition))

    local w = Mathf.Lerp(GridField.ASPECT_W - 1, -GridField.ASPECT_W + 1, math.random())
    local h = Mathf.Lerp(GridField.ASPECT_H - 1, -GridField.ASPECT_H + 1, math.random())
    self.gridPosition.Position = Vector2Int(math.floor(w), math.floor(h))
end

function Food:OnTriggerEnter2D(collider)
end
