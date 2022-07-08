gPlayTable.CreatePlay
{
firstState = "judge",
["judge"]={
switch =function()
if CGetBallY()<=0 then
return "GetBall_left"
else return "GetBall_right"
end
end
},

["GetBall_left"] = {
switch = function()
if CBall2RoleDist("Kicker") < 30 then
return "PassBall_left"
end
end,
Receiver=task.GotoPos("Receiver",100,150,0),
Kicker =task.GetBall("Kicker","Receiver"),

},
["GetBall_right"] = {
switch = function()
if CBall2RoleDist("Kicker") < 30 then
return "PassBall_right"
end
end,
Receiver=task.GotoPos("Receiver",100,-150,0),
Kicker =task.GetBall("Kicker","Receiver"),

},
["PassBall_left"] = {
switch = function()
if CIsBallKick("Kicker") then
return "Shoot"
end
end,
Receiver=task.GotoPos("Receiver",100,130,0),
Kicker = task.PassBall("Kicker","Receiver"),

},
["PassBall_right"] = {
switch = function()
if CIsBallKick("Kicker") then
return "Shoot"
end
end,
Receiver=task.GotoPos("Receiver",100,-130,0),
Kicker = task.PassBall("Kicker","Receiver"),

},
["Shoot"] = {
switch = function()
if CIsBallKick("Receiver") then
return "finish"
end
end,
Kicker=task.GotoPos("Kicker",-160,0,0),
Receiver = task.ReceiverTask("shoot"),

},

name = "Back_kick" 
}