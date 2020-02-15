
local GameObject = UnityEngine.GameObject
local Vector2Int = UnityEngine.Vector2Int
local Button = UnityEngine.UI.Button--这里绑定之后还是不行~，因为没有提示
local Gradients = Game.Gradients
local System = Game.System
local Head = Game.Head
local Factory = Game.Factory
local MyRestart = Game.Restart

---@class Restart
Restart = require("Lib.Class")()

function Restart:Ctor(obj)
    self.obj = obj
   
end

function Restart:Awake()
    local obj = self.obj
    
   

    obj.button = obj.gameObject:GetComponent(typeof(Button))
    obj.button.onClick.AddListener(MyRestart.OnClick)
    -- print(obj.button)
    -- print("==========================")
    -- obj.button:onClick.AddListener(Restart.OnClick) -- 这里没有解决在lua里面给button加listener的问题
    -- print("Restart:Awake")
end

function Restart:OnClick()

    local obj = self.obj

    local uis = GameObject.FindGameObjectsWithTag("UI")

    for k = 0, uis.Length-1 do --这里不能获得user.data的数组长度
        print("uis", uis.Length)
        local g = uis[k]:GetComponent(typeof(Gradients))
        g.enabled = true --可能有问题
    end

    System.IS_OVER = false

    local bodys = GameObject.FindGameObjectsWithTag("Body")
    local foods = GameObject.FindGameObjectsWithTag("Food")
    local newBody = GameObject.FindGameObjectWithTag("NewBody")
    local head = GameObject.FindGameObjectWithTag("Head")

    for k = 0, bodys.Length-1 do
        GameObject.Destroy(bodys[k])
    end

    for k = 0, foods.Length-1 do
        GameObject.Destroy(foods[k])
    end

    GameObject.Destroy(newBody)
    head:GetComponent(typeof(Head)):Reset()
    Factory.FoodCount = 0

    
end

