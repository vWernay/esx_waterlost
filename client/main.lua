Citizen.CreateThread(function()
    while true do
		Citizen.Wait(2500)
		if IsPedSwimming(PlayerPedId(), false) then
			TriggerServerEvent('esx_waterlost:caiuNaAgua')
		end
	end	
end)
