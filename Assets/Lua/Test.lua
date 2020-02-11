local GameObject = UnityEngine.GameObject

Test = require("Lib.Class")()

function Test.NewGameObject(name)
    local go = GameObject(name)
    print(go)

    return go
end

function Test:Ctor(value)
    self.value = value
end

function Test:Print()
    print("Test's value is " .. self.value)
end
