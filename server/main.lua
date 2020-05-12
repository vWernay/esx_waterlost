------------------ESX, NÃO TOQUE!--------------------------
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)
-----------------------------------------------------------

-- Beta

RegisterServerEvent('esx_perderitens:perderTudo')
AddEventHandler('esx_perderitens:perderTudo', function()

	local xPlayer = ESX.GetPlayerFromId(source) -- Obter o player
	local xGPS = xPlayer.getInventoryItem('gps') -- Item: GPS
	local xCelular = xPlayer.getInventoryItem('phone') -- Item: Celular
	local xRadio = xPlayer.getInventoryItem('radio') -- Item: Rádio
	local xWater = xPlayer.getInventoryItem('water') -- Item: Garrafa de Água
	local xCoca = xPlayer.getInventoryItem('cocacola') -- Item: Lata de Coca-cola
	local xIce = xPlayer.getInventoryItem('icetea') -- Item: Chá gelado
	local xLeite = xPlayer.getInventoryItem('milk') -- Item: Leite
	local xChocolate = xPlayer.getInventoryItem('chocolate') -- Item: Barra de Chocolate
	local xSanduba = xPlayer.getInventoryItem('sandwich') -- Item: Sanduiche
	local xHamburger = xPlayer.getInventoryItem('hamburger') -- Item: Hamburger
	local xCup = xPlayer.getInventoryItem('cupcake') -- Item: Cupcake
	local xChips = xPlayer.getInventoryItem('chips') -- Item: Batata Fritas
	local xCigarro = xPlayer.getInventoryItem('cigarett') -- Item: Cigarro
	local xIsqueiro = xPlayer.getInventoryItem('lighter') -- Item: Isqueiro
	local xVape = xPlayer.getInventoryItem('vape') -- Item: Vape
	xMoney = xPlayer.getMoney() -- Obter o dinheiro do player
	xBlackMoney = xPlayer.getAccount('black_money').money -- Obter o dinheiro sujo do player
  
  --local xExemplo = xPlayer.getInventoryItem('exemplo') -- Exemplo de como adcionar um novo item.


	if xGPS.count > 0 then
		xPlayer.removeInventoryItem('gps', 1)
		xPlayer.addInventoryItem('gpsqueimado', 1 )
		TriggerClientEvent('esx:showNotification', source, '~s~Seu ~y~GPS ~r~queimou~s~!!!')
	end	

	if xCelular.count > 0 then
		xPlayer.removeInventoryItem('phone', 1)
		xPlayer.addInventoryItem('celqueimado', 1 )
		TriggerClientEvent('esx:showNotification', source, '~s~Seu ~y~Celular ~r~queimou~s~!!!')
	end	

	if xVape.count > 0 then
		xPlayer.removeInventoryItem('vape', 1)
		xPlayer.addInventoryItem('vapequeimado', 1 )
		TriggerClientEvent('esx:showNotification', source, '~s~Seu ~y~Celular ~r~queimou~s~!!!')
	end	

	if xRadio.count > 0 then
		xPlayer.removeInventoryItem('radio', 1)
		xPlayer.addInventoryItem('radioqueimado', 1 )
		TriggerClientEvent('esx:showNotification', source, '~s~Seu ~y~Radinho ~r~queimou~s~!!!')
	end	

	if xWater.count > 0 then
		xPlayer.removeInventoryItem('water', 1)
		TriggerClientEvent('esx:showNotification', source, '~s~Sua ~y~Garrafa de Água ~r~saiu boiando~s~!!!')
	end	

	if xCoca.count > 0 then
		xPlayer.removeInventoryItem('cocacola', 1)
		TriggerClientEvent('esx:showNotification', source, '~s~Sua ~y~Lata de Coca ~r~saiu boiando~s~!!!')
	end	

	if xIce.count > 0 then
		xPlayer.removeInventoryItem('icetea', 1)
		TriggerClientEvent('esx:showNotification', source, '~s~Seu ~y~Chá ~r~saiu boiando~s~!!!')
	end	

	if xLeite.count > 0 then
		xPlayer.removeInventoryItem('milk', 1)
		TriggerClientEvent('esx:showNotification', source, '~s~Seu ~y~Copo de leite ~r~saiu boiando~s~!!!')
	end	

	if xChocolate.count > 0 then
		xPlayer.removeInventoryItem('chocolate', 1)
		TriggerClientEvent('esx:showNotification', source, '~s~Seu ~y~Chocolate ~r~estragou~s~!!!')
	end	

	if xSanduba.count > 0 then
		xPlayer.removeInventoryItem('sandwich', 1)
		TriggerClientEvent('esx:showNotification', source, '~s~Seu ~y~Sanduba ~r~estragou~s~!!!')
	end	

	if xHamburger.count > 0 then
		xPlayer.removeInventoryItem('hamburger', 1)
		TriggerClientEvent('esx:showNotification', source, '~s~Seu ~y~Hamburger ~r~estragou~s~!!!')
	end	

	if xCup.count > 0 then
		xPlayer.removeInventoryItem('cupcake', 1)
		TriggerClientEvent('esx:showNotification', source, '~s~Sua ~y~Cupcake ~r~estragou~s~!!!')
	end	

	if xChips.count > 0 then
		xPlayer.removeInventoryItem('chips', 1)
		TriggerClientEvent('esx:showNotification', source, '~s~Sua ~y~Batata ~r~estragou~s~!!!')
	end	

	if xIsqueiro.count > 0 then
		xPlayer.removeInventoryItem('lighter', 1)
		TriggerClientEvent('esx:showNotification', source, '~s~Seu ~y~Isqueiro ~r~estragou~s~!!!')
	end	

	if xCigarro.count > 0 then
		xPlayer.removeInventoryItem('cigarett', 1)
		TriggerClientEvent('esx:showNotification', source, '~s~Seu ~y~Cigarro ~r~estragou~s~!!!')
	end	

	if xMoney > 0 then
		xPlayer.removeMoney(xMoney)
		xPlayer.addInventoryItem('dinheiromol', xMoney)
		TriggerClientEvent('esx:showNotification', source, '~s~Seu ~y~Dinheiro ~r~molhou~s~!!!')
	end	

	if xBlackMoney > 0 then
		xPlayer.removeAccountMoney('black_money', xBlackMoney)
		xPlayer.addInventoryItem('sujomolhado', xBlackMoney)
		TriggerClientEvent('esx:showNotification', source, '~s~Seu ~y~Dinheiro Sujo ~r~molhou~s~!!!')
	end	

end)
