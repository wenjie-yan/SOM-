--desc: 
gPlayTable.CreatePlay{
    firstState = "GetBall",
    
    ["GetBall"] = {
        switch = function()
            if CBall2RoleDist("Receiver") < 15 then
                return "PassBall"
            end
        end,
        Kicker   = task.GotoPos("Kicker",150,-130,0),
        Receiver = task.GetBall("Receiver","Kicker"),
        
    },
        
    ["PassBall"] = {
        switch = function()
            if CIsBallKick("Receiver") then
                return "Shoot"
            end
        end,
        Receiver = task.PassBall("Receiver","Kicker"),
        
    },
    
    ["Shoot"] = {
        switch = function()
            if CIsBallKick("Kicker") then
                return "finish"
            end
        end,
        Kicker = task.Shoot("Kicker"),
    },
    name = "backy"
    }