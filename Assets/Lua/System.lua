local GameObject = UnityEngine.GameObject
local RuntimePlatform = UnityEngine.RuntimePlatform
local Time = UnityEngine.Time
local Body = Game.Body
local GameSystem = Game.System
local Application = UnityEngine.Application


---@class System
System = require("Lib.Class")()

function System.AdjustInterval()
    GameSystem.INTERVAL = 29 / (9 * Body.Count + 20)
end

function System:Ctor(obj)
    self.obj = obj
end

function System:Awake()
    local obj = self.obj

    GameSystem.CANVAS = GameObject.Find("Canvas") 
    GameSystem.CANVAS:SetActive(false)

    if(Application.platform ~= RuntimePlatform.Android) then 
        local canvas2 = GameObject.Find("Canvas2")
        canvas2:SetActive(false)
    end
end

function System:Update()
    local obj = self.obj

    obj.timer  = Time.deltaTime + obj.timer

    if(obj.timer >= obj.INTERVAL) then
            obj.timer = obj.timer - obj.INTERVAL
            return true
    else
        return false
    end

end

