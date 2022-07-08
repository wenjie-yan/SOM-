--desc: 
gPlayTable.CreatePlay{
firstState = "GetBall",

["GetBall"] = {
    switch = function()
        if CBall2RoleDist("Receiver") <15 then
            return "PassBall"
        end
    end,
    Kicker   = task.GoRecePos("Kicker"),
    Receiver = task.GetBall("Receiver","Receiver"),
},
    
["PassBall"] = {
    switch = function()
        if CIsBallKick("Receiver") then
            return "Shoot"
        end
    end,
    Kicker   = task.GoRecePos("Kicker"),
    Receiver = task.PassBall("Reciever","Kicker"),
},

["Shoot"] = {
    switch = function()
        if CIsBallKick("Kicker") then
            return "finish"
        end
    end,
    Kicker = task.Shoot("Kicker"),
    Receiver = task.RefDef("Receiver"),
},
name = "task01"
}