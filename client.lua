Citizen.CreateThread(function()
	while true do
		Citizen.Wait(22*60000)
		TriggerServerEvent("redm:paycheck")
	end
end)