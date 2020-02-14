
        local GameObject = UnityEngine.GameObject
        local Graphic = UnityEngine.Graphics
        local Time = UnityEngine.Time
        local Color = UnityEngine.Color
        local GridPosition = Game.GridPosition
    
        ---@class Gradients
        Gradients = require("Lib.Class")()
        
        function Gradients:Ctor(obj)
            self.obj = obj
           
        end
        
    
        function Gradients:Awake()
            local obj = self.obj
            
            obj.graphic = obj.gameObject:GetComponent(typeof(Graphic))  -- graphic, garphics 这里应该是同样的问题
            obj.originColor = obj.graphic.color
            obj.originColor.a = 0   
        end


        function Gradients:OnEnable()
            local obj = self.obj
            obj.timer = 0
            print("enable")
        end

        function Gradients:Update()
            local obj = self.obj
            obj.timer = Time.deltaTime
            obj.graphic.color = Color.Lerp(obj.originColor, obj.targetColor, obj.timer / obj.TIME)

            if(obj.timer >= obj.TIME) then
                obj.enabled = false--这里可能有问题
                print("disable")
            end
        end

      