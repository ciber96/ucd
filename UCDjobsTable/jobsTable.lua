local jobsTable = 
{
	-- Other jobs
	["Gangster"] = 
	{
		team = "Gangsters",
	},
	["Criminal"] = 
	{
		team = "Criminals",
	},
	[""] = 
	{
		team = "Citizens",
	},
	
	-- Proper jobs
	["Aviator"] = 
	{
		team = "Citizens",
		markers =
		{
			{x = -1868.595, y = 46.0555, z = 1055.1953, interior = 14, dimension = 50000}, -- Los Santos
			{x = -1868.595, y = 46.0555, z = 1055.1953, interior = 14, dimension = 50001}, -- San Fierro 
			{x = -1868.595, y = 46.0555, z = 1055.1953, interior = 14, dimension = 50002}, -- Las Venturas
			{x = 413.7399, y = 2536.8147, z = 19.1484, interior = 0, dimension = 0}, -- Verdant Meadows
		},
		skins =
		{
			{61, "Male Aviator"},
			{66, "Female Aviator"},
		},
		colour = {r = 255, g = 215, b = 0},
		blipID = 56,
		f5 = true,
		measurement = "km",
		desc = "An aviator's job is to transport cargo and passengers both \ndomestically and internationally with various aircraft. \nAn aviator has a repertoire of only the best engineered \naircraft to get his/her job done. The job has a \nsubstantially high risk factor, aviators are compensated for \ntheir risk with lump sums of cash after every flight. \n\nGo to a blip to spawn a plane, or use your own. \nFrom there, wait to be assigned a flight path. \nOnce assigned, pick up your cargo and fly to your \ndestination, which will be marked on your radar and map.",
	},
	["Trucker"] = 
	{
		team = "Citizens",
		markers = 
		{
			{x = 81.3992, y = -283.6037, z = 1.5781, interior = 0, dimension = 0}, -- Blueberry Acres
			{x = -1677.2028, y = 7.5826, z = 3.5547, interior = 0, dimension = 0}, -- Easter Basin
			{x = 2428.2793, y = -2078.019, z = 13.5469, interior = 0, dimension = 0}, -- LS (Ocean Docks)
		},
		skins = 
		{
			{128, "Trucker 1"},
			{133, "Trucker 2"},
			{201, "Trucker 3"},
			{202, "Trucker 4"},
			{206, "Trucker 5"},
		},
		colour = {r = 255, g = 215, b = 0},
		blipID = 56,
		f5 = true,
		measurement = "km",
		desc = "",
	},
	["Prostitute"] = 
	{
		team = "Citizens",
		markers = 
		{
			
		},
		skins = 
		{
			
		},
		colour = {r = 255, g = 215, b = 0},
		blipID = 56,
		desc = "",
	},
	["Mechanic"] = 
	{
		team = "Citizens",
		markers = 
		{	
			{x = -2053.3015, y = 165.2379, z = 28.8359, interior = 1, dimension = 50000},
			{x = -2053.3015, y = 165.2379, z = 28.8359, interior = 1, dimension = 50001},
			{x = -2053.3015, y = 165.2379, z = 28.8359, interior = 1, dimension = 50002},
			{x = -2053.3015, y = 165.2379, z = 28.8359, interior = 1, dimension = 50003},
		},
		skins = 
		{
			{50, "Mechanic 1"},
			{268, "Mechanic 2"},
			{305, "Mechanic 3"},
		},
		colour = {r = 255, g = 215, b = 0},
		blipID = 56,
		desc = "",
	},
	["Paramedic"] = 
	{
		team = "Citizens",
		markers = 
		{
			{x = 234.5989, y = 159.3621, z = 1003.0234, interior = 3, dimension = 50000},
			{x = 234.5989, y = 159.3621, z = 1003.0234, interior = 3, dimension = 50001},
			{x = 234.5989, y = 159.3621, z = 1003.0234, interior = 3, dimension = 50002},
			{x = 234.5989, y = 159.3621, z = 1003.0234, interior = 3, dimension = 50003},
			{x = 234.5989, y = 159.3621, z = 1003.0234, interior = 3, dimension = 50004},
			{x = 234.5989, y = 159.3621, z = 1003.0234, interior = 3, dimension = 50005},
			{x = 234.5989, y = 159.3621, z = 1003.0234, interior = 3, dimension = 50006},
		},
		skins = 
		{
			{275, "Female Medic"},
			{274, "Male Medic 1"},
			{276, "Male Medic 2"},
		},
		colour = {r = 0, g = 255, b = 255},
		blipID = 56,
		f5 = true,
		measurement = "HP",
		desc = "A paramedic's job is to heal the people of San Andreas. \nA paramedic is given both helicopters and\n ambulances to be the first responders to an ordeal. \nTo heal players, a paramedic must be still and within one \nmetre of the patient they want to heal. \n\nA paramedic has a centralized computer to see the status \nof people that require healing around SA. This is accessed \nusing the F5 key when on-duty.",
	},
	["Quarry Miner"] = 
	{
		team = "Citizens",
		markers = 
		{
			--{x = 590.1082, y = 870.6659, z = -42.4973, interior = 0, dimension = 0},
		},
		skins = 
		{
			{27, "Miner"},
		},
		colour = {r = 255, g = 215, b = 0},
		blipID = 56,
		f5 = true,
		measurement = "units",
		desc = "",
	},
	["Police Officer"] = 
	{
		team = "Law",
		markers = 
		{
			{x = 248.9846, y = 67.7826, z = 1003.6406, interior = 6, dimension = 50000}, -- LSPD
			{x = -1615.7192, y = 685.8612, z = 7.1875, interior = 0, dimension = 0},-- SFPD (temp)
		},
		skins = 
		{
			{280, "LSPD Officer"},
			{281, "SFPD Officer"},
			{282, "LVPD Officer"},
			{283, "County Sherrif"},
			{288, "Desert Sherrif"},
		},
		colour = {r = 30, g = 144, b = 255},
		blipID = 56,
		desc = "da popo fuark",
	},
	["Traffic Officer"] = 
	{
		team = "Law",
		markers = 
		{
			{x = 1585.4943, y = -1684.302, z = 6.2252, interior = 0, dimension = 0}, -- LSPD
			{x = -1594.2029, y = 733.9587, z = -4.9063, interior = 0, dimension = 0}, -- SFPD
		},
		skins = 
		{
			{284, "Motorbike Officer"},
		},
		colour = {r = 30, g = 144, b = 255},
		blipID = nil,
		desc = "traffic gonna get fuked lol",
	},
	["Detective"] = 
	{
		team = "Law",
		markers = 
		{
			{x = 1585.4943, y = -1688.302, z = 6.2252, interior = 0, dimension = 0},
			{x = -1597.8824, y = 733.7309, z = -4.9063, interior = 0, dimension = 0},
		},
		skins = 
		{
			{165, "Agent K"},
			{166, "Agent J"},
		},
		colour = {r = 30, g = 144, b = 255},
		blipID = nil,
		desc = "detectivate some niggas lmao",
	},
}

function getJobTable()
	return jobsTable
end

local jobsRanks = 
{
	["Aviator"] = 
	{		
		-- Bonus in percentage of original price - the end income will be: base + (bonus % of base)
		-- Requirements in number of flights
		-- 0 - 2 = blue, 3 - 5 = yellow, 6 - 8 = green, 9 - 10 = red
		[0] = {name = "Student Pilot", bonus = 0, req = 0, colour = {r1 = 0, g1 = 0, b1 = 255, r2 = 255, g2 = 255, b2 = 255}}, -- Blue
		[1] = {name = "Amateur Aviator", bonus = 15, req = 30, colour = {r1 = 0, g1 = 0, b1 = 255, r2 = 255, g2 = 255, b2 = 255}}, -- Blue
		[2] = {name = "Licensed Aviator", bonus = 25, req = 90, colour = {r1 = 0, g1 = 0, b1 = 255, r2 = 0, g2 = 0, b2 = 255}}, -- Blue
		
		[3] = {name = "Competent Aviator", bonus = 40, req = 210, colour = {r1 = 255, g1 = 255, b1 = 0, r2 = 255, g2 = 255, b2 = 255}}, -- Yellow
		[4] = {name = "Flight Instructor", bonus = 65, req = 550, colour = {r1 = 255, g1 = 255, b1 = 0, r2 = 255, g2 = 255, b2 = 255}}, -- Yellow
		[5] = {name = "Flight Engineer", bonus = 95, req = 980, colour = {r1 = 255, g1 = 255, b1 = 0, r2 = 255, g2 = 255, b2 = 0}}, -- Yellow
		
		[6] = {name = "Flight Officer", bonus = 130, req = 1400, colour = {r1 = 0, g1 = 255, b1 = 0, r2 = 255, g2 = 255, b2 = 255}}, -- Green
		[7] = {name = "Co-Captain", bonus = 165, req = 2000, colour = {r1 = 0, g1 = 255, b1 = 0, r2 = 255, g2 = 255, b2 = 255}}, -- Green
		[8] = {name = "Captain", bonus = 200, req = 2650, colour = {r1 = 0, g1 = 255, b1 = 0, r2 = 0, g2 = 255, b2 = 0}}, -- Green
		
		[9] = {name = "Executive", bonus = 230, req = 3500, colour = {r1 = 255, g1 = 0, b1 = 0, r2 = 255, g2 = 255, b2 = 255}}, -- Red
		[10] = {name = "Ace", bonus = 300, req = 4500, colour = {r1 = 255, g1 = 0, b1 = 0, r2 = 255, g2 = 0, b2 = 0}}, -- Red
	},
	["Trucker"] = {
		-- Still need to do calculations, but this is a basic guideline for now
		[0] = {name = "Unlicensed Trucker", bonus = 0, req = 0, colour = {r1 = 255, g1 = 255, b1 = 255, r2 = 255, g2 = 255, b2 = 255}},
		[1] = {name = "Licensed Trucker", bonus = 15, req = 30, colour = {r1 = 0, g1 = 0, b1 = 255, r2 = 255, g2 = 255, b2 = 255}},
		[2] = {name = "Advanced Trucker", bonus = 25, req = 75, colour = {r1 = 0, g1 = 0, b1 = 255, r2 = 0, g2 = 0, b2 = 0}},
		[3] = {name = "Commercial Trucker", bonus = 40, req = 165, colour = {r1 = 255, g1 = 255, b1 = 0, r2 = 255, g2 = 255, b2 = 255}},
		[4] = {name = "Light Load Trucker", bonus = 65, req = 280, colour = {r1 = 255, g1 = 255, b1 = 0, r2 = 255, g2 = 255, b2 = 255}},
		[5] = {name = "Medium Load Trucker", bonus = 95, req = 380, colour = {r1 = 255, g1 = 255, b1 = 0, r2 = 255, g2 = 255, b2 = 255}},
		[6] = {name = "Heavy Load Trucker", bonus = 130, req = 500, colour = {r1 = 255, g1 = 255, b1 = 0, r2 = 255, g2 = 255, b2 = 0}},
		[7] = {name = "Expert Trucker", bonus = 165, req = 750, colour = {r1 = 255, g1 = 0, b1 = 0, r2 = 255, g2 = 255, b2 = 255}},
		[8] = {name = "Executive Trucker", bonus = 200, req = 925, colour = {r1 = 255, g1 = 0, b1 = 0, r2 = 255, g2 = 255, b2 = 255}},
		[9] = {name = "Chief Executive", bonus = 230, req = 1150, colour = {r1 = 255, g1 = 0, b1 = 0, r2 = 255, g2 = 0, b2 = 0}},
		[10] = {name = "The Hauler", bonus = 300, req = 1350, colour = {r1 = 0, g1 = 0, b1 = 0, r2 = 0, g2 = 0, b2 = 0}},
	},
}

function getJobRanks(jobName)
	return jobsRanks[jobName]
end

-- If certain jobs only have vehicles with a certain colour
local vehicleColours = 
{
	["Traffic Officer"] = {
		[415] = {r1 = 59, g1 = 78, b1 = 120, r2 = 245, g2 = 245, b2 = 245}, -- Cheetah
	},
}

function getVehicleColours(jobName)
	return vehicleColours[jobName]
end

local rankRestrictions = 
{
	["Aviator"] = 
	{
		[519] = 2, -- Shamal
		[487] = 2, -- Maverick
		[592] = 3, -- Andromada
		[553] = 3, -- Nevada
		[577] = 5, -- AT-400 (this is higher than the rest because of the allahu akbar types of people)
	},
}
function getRestricedVehicles(jobName)
	return rankRestrictions[jobName] or false
end

