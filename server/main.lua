-------------------------ESX-------------------------------
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
-----------------------------------------------------------
RegisterServerEvent('esx_waterlost:caiuNaAgua')
AddEventHandler('esx_waterlost:caiuNaAgua', function()
	local playerId = source
	local xPlayer = ESX.GetPlayerFromId(playerId)
	local xMoney = xPlayer.getMoney()
	local xBlackMoney = xPlayer.getAccount('black_money').money 
	items = Config.Items
	for item, info in pairs(items) do
		local xItem = xPlayer.getInventoryItem(item)
		if (xItem.count > 0) then
			xPlayer.removeInventoryItem(item, xItem.count)
			if (info.give_burn) then
				xPlayer.addInventoryItem(info.give_burn, xItem.count)
			end

			TriggerClientEvent('esx:showNotification', playerId, _U(item))
			--xPlayer.triggerEvent('esx:showNotification', _U(item))
		end
	end

	if (Config.Money) then
		if (xMoney > 0) then
			xPlayer.removeMoney(xMoney)
			xPlayer.addInventoryItem('wet_money', xMoney)
			TriggerClientEvent('esx:showNotification', playerId, _U('money'))
			--xPlayer.triggerEvent('esx:showNotification', _U('money'))
		end	
	end

	if (Config.BlackMoney) then
		if (xBlackMoney > 0) then
			xPlayer.removeAccountMoney('black_money', xBlackMoney)
			xPlayer.addInventoryItem('wet_black_money', xBlackMoney)

			TriggerClientEvent('esx:showNotification', playerId, _U('black_money'))
			--xPlayer.triggerEvent('esx:showNotification', _U('black_money'))
		end	
	end
end)
