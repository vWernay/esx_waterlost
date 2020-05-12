-----------------------ESX, NÃO TOQUE!----------------------------------
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)
-------------------------------------------------------------------------


-- Beta

Citizen.CreateThread(function()
    while true do
		Citizen.Wait(60)
		if IsPedSwimming(PlayerPedId(), false) then
			--print('O Player está nadando!')
			TriggerServerEvent('esx_perderitens:perderTudo')
		end
	end	
end)
