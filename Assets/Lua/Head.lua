local Mathf = UnityEngine.Mathf
local Random = UnityEngine.Random
local GameObject = UnityEngine.GameObject
local Vector2Int = UnityEngine.Vector2Int
local Input = UnityEngine.Input
local KeyCode = UnityEngine.KeyCode 
local Body = Game.Body
local GridPosition = Game.GridPosition
local System = Game.System
local MyHead = Game.Head


Head = require("Lib.Class")()

function Head:Ctor(obj)
    self.obj = obj
    print(obj)
    --self:Awake()
end

function Head:Awake() 
    local obj = self.obj

    obj.gridPosition = obj.gameObject:GetComponent(typeof(GridPosition))
    obj.body = obj.gameObject:GetComponent(typeof(Body))

end


function Head:MoveTick(direction, up, down, left, right)
    local obj = self.obj
    obj.body.laterPosition = obj.transform.position

    if (direction == up) then
        obj.gridPosition.Y = obj.gridPosition.Y + 1
    elseif (direction == down) then
        obj.gridPosition.Y = obj.gridPosition.Y - 1
    elseif (direction == left)  then
        obj.gridPosition.X = obj.gridPosition.X - 1 
    elseif (direction == right)  then
        obj.gridPosition.X = obj.gridPosition.X + 1 
    end

end

function Head:Update(joystick, DRAG_VALUE, up, down, left, right)
    local obj = self.obj
    self.up = up

    if (Input.GetKeyDown(KeyCode.UpArrow)) then
        self:SetDirection(up, up, down, left, right)

    elseif (Input.GetKeyDown(KeyCode.DownArrow)) then
        self:SetDirection(down, up, down, left, right) 

    elseif (Input.GetKeyDown(KeyCode.LeftArrow)) then
        self:SetDirection(left, up, down, left, right)

    elseif (Input.GetKeyDown(KeyCode.RightArrow)) then
        self:SetDirection(right, up, down, left, right) 
    end

    local x = joystick.localPosition.x
    local y = joystick.localPosition.y

    if (y >= DRAG_VALUE) then
        self:SetDirection(up, up, down, left, right)

    elseif (y <= -DRAG_VALUE) then
        self:SetDirection(down, up, down, left, right)

    elseif (x <= -DRAG_VALUE) then
        self:SetDirection(left, up, down, left, right)

    elseif (x >= DRAG_VALUE) then
        self:SetDirection(right, up, down, left, right)
    end
    
end

---小总结，目前从C#传变量用了三个方法，一个是obj.xx，但是obj总是有问题，且xx为public； 
---第二种是通过函数调用push过来，目前没缺点，就是能实现给变量赋值的功能
---第三种是Head.xx, 直接取用，也需要为public 

function Head:SetDirection(next, up, down, left, right)
    local obj = self.obj
    if(obj.direction == next) then
        return 
    end

    local ban1 = true
    local ban2 = true
    local ban3 = true
    local ban4 = true
    
    if( not (next == down and obj.direction == up ) ) then
         ban1 = false
    end

    if( not (next == up and obj.direction == down ) ) then
        ban2 = false
    end

    if( not (next == left and obj.direction == right ) ) then
        ban3 = false
    end

    if( not (next ==right and obj.direction == left ) ) then
        ban4 = false
    end

    if(not(ban1 or ban2 or ban3 or ban4)) then
        obj.direction = next
    end
end


function Head:OnTriggerEnter2D(collider)
    local obj = self.obj

    if(collider.tag == "Food") then
       -- print(obj.TAIL)
        obj.TAIL:Bore() 
        System.AdjustInterval()
    
    elseif(collider.tag == "Body") then
        System.IS_OVER = true
    end
end

function Head:Reset()
    local obj = self.obj
    obj.gridPosition.Position = Vector2Int.zero
    obj.direction = self.up
    obj.TAIL = obj.body 
end



   