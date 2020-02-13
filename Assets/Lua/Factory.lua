local GameObject = UnityEngine.GameObject

---@class Factory
Factory = require("Lib.Class")()

function Factory:Ctor(obj)
    self.obj = obj
    --self:Awake()
end

function Factory:Produce(min, max, foodPrefab, FoodCount)
    for k = min + 1, max do
        GameObject.Instantiate(foodPrefab)
        FoodCount = FoodCount + 1
    end
return FoodCount
end


