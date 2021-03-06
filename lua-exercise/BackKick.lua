--desc: 
gPlayTable.CreatePlay{
firstState = "GetBall",

["GetBall"] = {
	switch = function()
		if CBall2RoleDist("Receiver") < 15 and COurRole2RoleDir("Kicker","Receiver")>170 then
			return "PassBall"
		end
	end,
	Kicker   = task.KickerTask("goandtu"),
	Receiver = task.GetBall("Receiver","Kicker"),
	
},
	
["PassBall"] = {
	switch = function()
		if CIsBallKick("Receiver") and CBall2RoleDist("Kicker")<15  then
			return "Shoot"
		end
	end,
	Receiver = task.ReceiverTask("passball"),
	Kicker   = task.RobotHalt("Receiver"),
},

["Shoot"] = {
	switch = function()
		if CIsBallKick("Kicker") then
			return "finish"
		end
	end,
	Kicker = task.Shoot("Kicker"),
	
},
name = "BackKick"
}