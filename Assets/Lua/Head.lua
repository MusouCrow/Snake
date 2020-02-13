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
local obj1 = nil 

Head = require("Lib.Class")()

function Head:Ctor(obj)
    self.obj = obj
    self:Awake()
end

function Head:Awake()
    
    -- local obj = self.obj
    -- MyHead.body = obj.gameObject:GetComponent(typeof(Body))
    -- MyHead.gridPosition = obj.gameObject:GetComponent(typeof(GridPosition))
    -- print("Head:Awake")
    --因为报错，这里先从C#实现
end


function Head:MoveTick()
    local obj = self.obj
    obj.body.laterPosition = obj.transform.position

    if (obj.direction == obj.Direction.up) then
        obj.gridPosition.Y = obj.gridPosition.Y + 1
    elseif (obj.direction == obj.Direction.down) then
        obj.gridPosition.Y = obj.gridPosition.Y - 1
    elseif (obj.direction == obj.Direction.left)  then
        obj.gridPosition.X = obj.gridPosition.X - 1 
    elseif (obj.direction == obj.Direction.right)  then
        obj.gridPosition.X = obj.gridPosition.X + 1 
    end

end

function Head:Update(joystick, DRAG_VALUE)

    if (Input.GetKeyDown(KeyCode.UpArrow)) then
        this:SetDirection(KeyCode.UpArrow)

    elseif (Input.GetKeyDown(KeyCode.DownArrow)) then
        this:SetDirection(KeyCode.DownArrow) 

    elseif (Input.GetKeyDown(KeyCode.LeftArrow)) then
        this:SetDirection(KeyCode.LeftArrow)

    elseif (Input.GetKeyDown(KeyCode.RightArrow)) then
        this:SetDirection(KeyCode.RightArrow) 
    end

    local x = joystick.localPosition.x
    local y = joystick.localPosition.y

    if (y >= DRAG_VALUE) then
        this:SetDirection(MyHead.Direction.up)

    elseif (y <= -DRAG_VALUE) then
        this:SetDirection(MyHead.Direction.down)

    elseif (x <= -DRAG_VALUE) then
        this:SetDirection(MyHead.Direction.left)

    elseif (x >= DRAG_VALUE) then
        this:SetDirection(MyHead.Direction.right)
    end
    
end

---！！！昨天就写到这个位置，应该需要给KeyCode 绑定一下，另外没有验证过obj.direction/Direction(private值)，是否行得通
---小总结，目前从C#传变量用了三个方法，一个是obj.xx，但是obj总是有问题，且xx为public； 
---第二种是通过函数调用push过来，目前没缺点，就是能实现给变量赋值的功能
---第三种是Head.xx, 直接取用，也需要为public 

function Head:SetDirection(direction, next)
    --local obj = self.obj
    if(direction == next) then
        return 
    end

    local ban1 = true
    local ban2 = true
    local ban3 = true
    local ban4 = true
    
    if( not (next == MyHead.Direction.down and direction == MyHead.Direction.up ) ) then
         ban1 = false
    end

    if( not (next == MyHead.Direction.up and direction == MyHead.Direction.down ) ) then
        ban2 = false
    end

    if( not (next == MyHead.Direction.left and direction == MyHead.Direction.right ) ) then
        ban3 = false
    end

    if( not (next == MyHead.Direction.right and direction == MyHead.Direction.left ) ) then
        ban4 = false
    end

    if(not(ban1 or ban2 or ban3 or ban4)) then
        direction = next
    end
    return direction
end


function Head:OnTriggerEnter2D(collider)
    if(collider.tag == "Food") then
        MyHead.TAIL.Bore()
    
    elseif(collider.tag == "Body") then
        System.IS_OVER = true
    end
end

function Head:Reset()
    local obj = self.obj
    obj.gridPosition.Position = Vector2Int.zero
    obj.direction = obj.Direction.up
    MyHead.TAIL = obj.Body ---这里不清楚
end


function Head:MoveTick(gridPosition,direction)
    --local obj = self.obj

    if(direction == MyHead.Direction.up) then
        gridPosition.Y = gridPosition.Y + 1

    elseif (direction == MyHead.Direction.down) then
        gridPosition.Y =  gridPosition.Y - 1

    elseif (direction == MyHead.Direction.left) then
        gridPosition.X =  gridPosition.X - 1

    elseif (direction == MyHead.Direction.right) then
        gridPosition.X =  gridPosition.X + 1
    end
end

   