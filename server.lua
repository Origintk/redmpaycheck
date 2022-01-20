VORP = exports.vorp_inventory:vorp_inventoryApi()

local data = {}

Citizen.CreateThread(function()
    data = exports.vorp_inventory:vorp_inventoryApi()
end) 

local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)


RegisterNetEvent("redm:paycheck")
AddEventHandler("redm:paycheck",function()
	local _source = source
	local User = VorpCore.getUser(_source)
	local Character = User.getUsedCharacter
	local group = Character.group

		if group == "admin" then -- grupo qual irá receber o pagamento
		Character.addCurrency(0, 100)
		TriggerClientEvent('vorp:TipRight',_source, "Você recebeu seu salário")
		end
		
		if group == "admin" then -- grupo qual irá receber o pagamento
        Character.addCurrency(0, 100)
		TriggerClientEvent('vorp:TipRight',_source, "Você recebeu seu salário")
		end
		--exemplo
		--if group == "admin" then -- grupo
       -- Character.addCurrency(0, 100)
		--end

end)
