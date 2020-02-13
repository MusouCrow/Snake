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
    obj1 = obj
    self:Awake()
end

function Head:Awake()
    
    local obj = self.obj
    obj.body = obj.gameObject:GetComponent(typeof(Body))
    obj.gridPosition = obj1.gameObject:GetComponent(typeof(GridPosition))
    print("Head:Awake")
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
    local obj = self.obj

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
---！！！为什么obj有两个提示

function Head:SetDirection(next)
    local obj = self.obj
    if(obj.direction == next) then
        return 
    end

    local ban1 = true
    local ban2 = true
    local ban3 = true
    local ban4 = true
    
    if( not (next == obj.Direction.down and obj.direction == obj.Direction.up ) ) then
         ban1 = false
    end

    if( not (next == obj.Direction.up and obj.direction == obj.Direction.down ) ) then
        ban2 = false
    end

    if( not (next == obj.Direction.left and obj.direction == obj.Direction.right ) ) then
        ban3 = false
    end

    if( not (next == obj.Direction.right and obj.direction == obj.Direction.left ) ) then
        ban4 = false
    end

    if(not(ban1 or ban2 or ban3 or ban4)) then
        obj.direction = next
    end
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


function Head:MoveTick(direction)
    local obj = self.obj

    if(direction == MyHead.Direction.up) then
        obj.gridPosition.Y =  obj.gridPosition.Y + 1

    elseif (direction == MyHead.Direction.down) then
        obj.gridPosition.Y =  obj.gridPosition.Y - 1

    elseif (direction == MyHead.Direction.left) then
        obj.gridPosition.X =  obj.gridPosition.X - 1

    elseif (direction == MyHead.Direction.right) then
        obj.gridPosition.X =  obj.gridPosition.X + 1
    end
end

   