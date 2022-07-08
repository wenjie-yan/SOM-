gPlayTable.CreatePlay{
firstState = "Shoot",
["Shoot"] = {
	switch = function()
		if CIsBallKick("Kicker") then
			return "finish"
		end
	end,
	Kicker = task.Shoot("Kicker"),
	
},

}