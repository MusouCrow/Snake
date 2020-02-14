local GameObject = UnityEngine.GameObject
local Vector2Int = UnityEngine.Vector2Int
local Quaternion = UnityEngine.Quaternion
local System = Game.System
local Head = Game.Head
local MyBody = Game.Body


---@class Body
Body = require("Lib.Class")()

function Body:Ctor(obj)
    self.obj = obj
   
end

function Body:Awake()
    local obj = self.obj

    if(obj.PREFAB == nil) then
        obj.PREFAB = UnityEngine.Resources.Load("Prefab/Body")
    end
    Head.TAIL = obj
    MyBody.Count = MyBody.Count + 1
    
end


function Body:OnDestroy()
    MyBody.Count = MyBody.Count - 1
end

function Body:Bore()
    local obj = self.obj
    
    if(obj.afterbody == nil) then
        obj.willNew = true
    end
end

function Body:NewBody(pre)
    local obj = self.obj

    local newbody = GameObject.Instantiate(obj.PREFAB, pre.transform.position, Quaternion.identity)
    newbody.transform.position = pre.transform.position
    local a = newbody:GetComponent(typeof(MyBody))
    local b = pre:GetComponent(typeof(MyBody))

    a.prebody = b
    b.afterbody = a 

    return newbody
end



function Body:MoveTick()
    local obj = self.obj

    if(obj.willNew == true) then
        self:NewBody(obj.gameObject)
        obj.willNew = false
    end

    if(obj.prebody == nil) then
        return
    end

    obj.laterPosition = obj.transform.position
    obj.transform.position = obj.prebody.laterPosition

end


function Body:WhenNewBornTick()
    local obj = self.obj

    if(obj.tag == "NewBody") then
        obj.tag = "Body"
    end    
end


