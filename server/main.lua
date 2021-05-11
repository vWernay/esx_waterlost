-------------------------ESX-------------------------------
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
-----------------------------------------------------------
local items = Config.Items
MySQL.ready(function()
	Wait(5000)
	for k,v in pairs(items) do
		MySQL.Async.fetchAll('SELECT name FROM items WHERE name = @name', { ['@name'] = k }, function(result)
			if not result[1] then
				if (Config.Locale == 'br' or Config.Locale == 'pt') then
					print(('	[esx_waterlost] [^3AVISO^7] Ignnorando o item inválido "%s", por favor certifique-se de que este item realmente existe'):format(k))
				else
					print(('	[esx_waterlost] [^3WARNING^7] Ignoring invalid item "%s", please make sure that item really exists'):format(k))
				end
			end
		end)
	end
end)

RegisterServerEvent('esx_waterlost:caiuNaAgua')
AddEventHandler('esx_waterlost:caiuNaAgua', function()
	local playerId = source
	local xPlayer = ESX.GetPlayerFromId(playerId)
	local xMoney = xPlayer.getMoney()
	local xBlackMoney = xPlayer.getAccount('black_money').money 
	for item, info in pairs(items) do
		if ESX.Items[item] then
			local xItem = xPlayer.getInventoryItem(item)
			if (xItem.count > 0) then
				xPlayer.removeInventoryItem(item, xItem.count)
				if (info.give_burn) then
					xPlayer.addInventoryItem(info.give_burn, xItem.count)
				end

				TriggerClientEvent('esx:showNotification', playerId, _U(item))
				--xPlayer.triggerEvent('esx:showNotification', v.message)
			end
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
