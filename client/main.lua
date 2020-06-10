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
		Citizen.Wait(2500)
		if IsPedSwimming(PlayerPedId(), false) then
			TriggerServerEvent('esx_perderitens:perderTudo')
		end
	end	
end)
