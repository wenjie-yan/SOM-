dir = function()
	return CRole2OppGoalDir("Kicker")
end

gPlayTable.CreatePlay
{
firstState = "GetBall",
["GetBall"] = {
switch = function()
if CBall2RoleDist("Receiver") < 30 then
return "PassBall"
end
end,
Kicker=task.GotoPos("Kicker",105,-105,dir),
Receiver =task.GetBall("Receiver","Kicker"),

},
["PassBall"] = {
switch = function()
if CIsBallKick("Receiver") then
return "Shoot"
end
end,
Kicker=task.GotoPos("Kicker",105,-105,dir),
Receiver = task.PassBall("Receiver","Kicker"),

},
["Shoot"] = {
switch = function()
if CIsBallKick("Kicker") then
return "finsh"
end
end,
Kicker = task.KickerTask("shoot"),
Receiver=task.GotoPos("Receiver",0,0,0),

},
name = "Corner_Kick" 
}