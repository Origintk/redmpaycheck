Citizen.CreateThread(function()
	while true do
		Citizen.Wait(22*60000) -- example 22 minutos /22 minutes 
		TriggerServerEvent("redm:paycheck")
	end
end)
