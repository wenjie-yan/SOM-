gPlayTable.CreatePlay
{
firstState = "Dianqiu",
["Dianqiu"] = {
switch = function()
if CIsBallKick("Kicker") then
return "finsh"
end
end,
Kicker = task.KickerTask("shoot"),
Receiver=task.GotoPos("Receiver",60,130,0),

},
name="Dianqiu_kick"
}