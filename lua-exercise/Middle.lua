--desc: 
gPlayTable.CreatePlay{
firstState = "GetBall",
    
["GetBall"] = {
    switch = function()
        if CBall2RoleDist("Receiver") < 30 then
            return "PassBall"
        end
     end,
     Kicker   = task.GoRecePos("Kicker"),
     Receiver = task.GetBall("Kicker","Receiver"),
     Goalie   = task.Goalie()
},
    
["PassBall"] = {
    switch = function()
        if CIsBallKick("Receiver") then
            return "Shoot"
        end
     end,
     Kicker   = task.GoRecePos("Kicker"),
     Receiver = task.PassBall("Receiver","Kicker"),
     Goalie   = task.Goalie()
},
    
["Shoot"] = {
    switch = function()
        if CIsBallKick("Kicker") then
            return "finish"
        end
     end,
    Kicker = task.Shoot("Kicker"),
    Receiver = task.RefDef("Receiver"),
     Goalie = task.Goalie()
},
    
name = "Middle"
}