-- Have to make this a normal person with ability to do everything but delete, truncate, drop, empty etc
local dbname = "mta"
local host = "ucdmta.com"
local usr = "root"
local passwd = "Network.114"

db = Connection("mysql", "dbname="..dbname..";host="..host..";port=3306", usr, passwd)
forum = Connection("mysql", "dbname=forum;host="..host..";port=3306", usr, passwd)

function returnConnection()
	if (not db) then
		outputDebugString("Connection to the MySQL database [via ucdmta.com:3306] failed! Trying noki.zorque.xyz:3306...")
		db = dbConnect("mysql", "dbname=mta;host=noki.zorque.xyz;port=3306", "root", "Network.114")
		if (not db) then
			outputDebugString("Connection to the MySQL database [via noki.zorque.xyz:3306] failed! Trying 192.168.0.2:3306...")
		else
			outputDebugString("Connection to the MySQL database [via 192.168.0.2:3306] successful!")
		end	
		return
	end
	outputDebugString("Connection to the MySQL database [via ucdmta.com:3306] successful!")
end
addEventHandler("onResourceStart", resourceRoot, returnConnection)

function getConnection()
	if (db) then
		return db
	end
	return false
end

function getForumDatabase()
	return forum
end
