allapps = 
{
	[1] = IM,
	[2] = Music,
	[3] = "exports.UCDwebBrowser:toggleBrowser() togglePhone()",
	[5] = Notes,
	[6] = Clock,
	[9] = Money,
	[10] = Mark,	
}

function toggleApp(i)
	if (allapps[i]) then
		if (type(allapps[i]) == "string") then
			loadstring(allapps[i])()
			return
		end
		allapps[i].toggle()
		t(not allapps[i].all[1].visible)
	end
end

function t(state)
	for x, y in pairs({phone.home.image, phone.home.label}) do
		for i, ele in pairs(y) do
			ele.visible = state
		end
	end
end

local playerGridLists = {phone.im.gridlist["players"], phone.money.gridlist["players"], phone.mark.gridlist["players"]}


-- Handle the gridlists
for _, plr in ipairs(Element.getAllByType("player")) do
	if (plr ~= localPlayer) then
		for _, gridlist in ipairs(playerGridLists) do
			local row = guiGridListAddRow(gridlist)
			guiGridListSetItemText(gridlist, row, 1, plr.name, false, false)
		end
	end
end

addEventHandler("onClientPlayerQuit", root,
	function ()
		for _, gridlist in ipairs(playerGridLists) do
			for i = 0, guiGridListGetRowCount(gridlist) - 1 do
				if (guiGridListGetItemText(gridlist, i, 1) == source.name) then
					guiGridListRemoveRow(gridlist, i)
				end
			end
		end
	end	
)

addEventHandler("onClientPlayerJoin", root,
	function ()
		for _, gridlist in ipairs(playerGridLists) do
			local row = guiGridListAddRow(gridlist)
			guiGridListSetItemText(gridlist, row, 1, source.name, false, false)
		end
	end
)

addEventHandler("onClientPlayerChangeNick", root,
	function (old, new)
		for _, gridlist in ipairs(playerGridLists) do
			for i = 0, guiGridListGetRowCount(gridlist) - 1 do
				if (guiGridListGetItemText(gridlist, i, 1) == old) then
					guiGridListSetItemText(gridlist, i, 1, new, false, false)
				end
			end
		end
	end
)
