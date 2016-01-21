--[[
	Notes:
	- Row positioning and column positiong starts at 0
--]]
local sX, sY = guiGetScreenSize()


phone = 
{
	-- Global scope [all of phone]
	button = {},
	image = {},
	
	-- Home screen
	home = 
	{
		button = {}, image = {}, label = {},
	},
}
phone.image[1] = GuiStaticImage(sX - 320 --[[abs = 1600]], sY - 622 --[[abs = 458]], 310, 600, ":UCDphone/iphone2.png", false)
phone.image[1].visible = false
phone.button["home"] = GuiButton(130, 535, 50, 50, "", false, phone.image[1])
phone.button["home"].alpha = 0

addEventHandler("onClientGUIClick", phone.button["home"], function () if (phone.home.label[1].visible) then togglePhone() end end, false)

-- row -1 means it's docked
local app = {width = 54, height = 54}
local baseX, baseY = 31, 100
local offX, offY = 64, 79

local apps = 
{
	-- [id] = {string name, string icon, {int row, int pos}}
	-- Docked
	[1] = {"IM", "im.png", {-1, 0}},
	[2] = {"Music", "music.png", {-1, 1}},
	[3] = {"Browser", "browser.png", {-1, 2}},
	[4] = {"Settings", "settings.png", {-1, 3}},
	
	-- Other
	[5] = {"Notes", "notes.png", {0, 0}},
	[6] = {"Clock", "clock.png", {0, 1}},
	[7] = {"Calculator", "calc.png", {0, 2}},
	--[8] = {},
}

-- Home screen
for i, info in ipairs(apps) do
	local x, y
	
	-- Work out the x axis
	x = baseX + (offX * info[3][2])
	
	-- If it's a docked row
	if (info[3][1] == -1) then
		y = 449
	else
		y = baseY + (offY * info[3][1])
	end
	
	phone.home.button[i] = GuiButton(x, y, app.width, app.height, info[1], false, phone.image[1])
	phone.home.button[i].alpha = 0
	
	phone.home.image[i] = GuiStaticImage(x, y, app.width, app.height, ":UCDphone/apps/"..info[2], false, phone.image[1])
	
	phone.home.label[i] = GuiLabel(x, y + app.height, app.width, 15, info[1], false, phone.image[1])
	guiLabelSetHorizontalAlign(phone.home.label[i], "center", false)
end

function togglePhone()
	phone.image[1].visible = not phone.image[1].visible
	showCursor(phone.image[1].visible)
end
bindKey("b", "up", togglePhone)
