bans = {}

addEventHandler("onResourceStart", resourceRoot,
	function ()
		db:exec("DELETE FROM `bans` WHERE (`duration` + `datum`) - UNIX_TIMESTAMP() <= 0")
		db:query(cacheBans, {}, "SELECT * FROM `bans`")
		Timer(deleteOldBans, 15000, 0) -- Every 15 seconds
	end
)

function cacheBans(qh)
	local result = qh:poll(-1)
	for _, ent in ipairs(result) do
		table.insert(bans, {ent.val, ent.reason, ent.banisher, ent.datum, ent.duration})
	end
end

function removePlayer(plr)
	plr:redirect("", 0)
end

function deleteOldBans()
	--db:exec("DELETE FROM `bans` WHERE (`duration` + `datum`) - UNIX_TIMESTAMP() <= 0")
	local deletion = {}
	for i, ent in pairs(bans) do
		if (ent[5] ~= -1 and (ent[4] + ent[5]) - getRealTime().timestamp <= 0) then
			table.insert(deletion, ent[1])
			table.remove(bans, i)
		end
	end
	if (#deletion >= 1) then
		for _, val in ipairs(deletion) do
			db:exec("DELETE FROM `bans` WHERE `val` = ?", val)
			--exports.UCDlogging: -- Must add some form of server log here
		end
	end
end

function addBan(val, banisher, reason, duration)
	if (type(val) ~= "string") then
		outputDebugString("Fuck")
		return false
	end
	if (val:len() ~= 32 and val:sub(1, 4) ~= "acc:") then
		local splitIP = split(val, string.byte("."))
		if (not splitIP) then
			return false
		elseif (splitIP:len() ~= 4) then
			return false
		end
		for _, octet in pairs(splitIP) do
            if (tonumber(octet) < 0 or tonumber(octet) > 255) then
                return false
            end
        end
	end
	
	if (isElement(banisher) and type(banisher) == "userdata") then
		banisher = banisher.name -- This works for both players and resources
	end
	if (type(banisher) ~= "string") then
		banisher = "N/A"
	end
	if (type(reason) ~= "string") then
		reason = "N/A"
	end
	if (type(duration) ~= "number") then
		return false
	end
	duration = math.floor(duration)
	if (duration < 0 and duration ~= -1) then
		return false
	end
	local t = getRealTime().timestamp
	
	banisher = banisher:gsub("'", "")
    banisher = banisher:gsub("\\", "")
    reason = reason:gsub("'", "")
    reason = reason:gsub("\\", "")
	
	for _, ent in pairs(bans) do
		if (ent[1] == val) then
			return false
		end
	end
	
	db:exec("INSERT INTO `bans` (`val`, `datum`, `banisher`, `reason`, `duration`) VALUES (?, ?, ?, ?, ?)", val, t, banisher, reason, duration)
	table.insert(bans, {val, reason, banisher, t, duration})
	
	for _, plr in ipairs(Element.getAllByType("player")) do
		if (plr.ip == val or plr.serial == val or plr.account.name == val:sub(5)) then
			removePlayer(plr)
		end
	end
	
	return true
end

function isAccountBanned(account)
	account = "acc:"..account
	for _, ent in pairs(bans) do
		if (ent[1] == account) then
			return true, ent
		end
	end
	return false
end

function isSerialBanned(serial)
	if (serial:len() == 32) then
		for _, ent in pairs(bans) do
			if (ent[1]:len() == 32 and ent[1] == serial) then
				--outputDebugString(ent[1])
				return true, ent
			end
		end
	end
	return false
end

function isIPBanned(ip)
	for _, ent in pairs(bans) do
		if (ent[1] == ip) then
			--outputDebugString(ent[1])
			return true, ent
		end
	end
	return false
end

function banCheck()
	if (client) then
		local s, sd = isSerialBanned(client.serial)
		local i, id = isIPBanned(client.ip)
		
		if (s) then
			triggerClientEvent(client, "UCDadmin.banScreen", client, sd)
		elseif (i) then
			triggerClientEvent(client, "UCDadmin.banScreen", client, id)
		else
			triggerClientEvent(client, "UCDaccounts.login.showLoginInterface", client)
		end
	end
end
addEvent("UCDadmin.banCheck", true)
addEventHandler("UCDadmin.banCheck", root, banCheck)

function removeBan(val, unbanisher)
	local foundBan, banInfo = false, nil
	for ind, ent in pairs(bans) do
		if (ent[1] == val) then
			foundBan = true
			banInfo = ind
			break
		end
	end
	
	if (not foundBan or not banInfo) then
		return false
	end
	
	if (type(unbanisher) == "userdata") then
		unbanisher = unbanisher.name
	end
	if (type(unbanisher) ~= "string") then
		unbanisher = "N/A"
	end
	
	bans[banInfo] = nil
	db:exec("DELETE FROM `bans` WHERE `val` = ?", val)
	
	if (val:sub(1, 4) ~= "acc:") then
		for _, plr in ipairs(Element.getAllByType("player")) do
			if (plr.serial == val or plr.ip == val) then
				removePlayer(plr) -- Reconnect them as their ban is over
			end
		end
	end
	
	return true
end
