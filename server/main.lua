local QBCore = exports['qb-core']:GetCoreObject()

-----------------------------------------------------------------------------------------
-- Selling Items to Pawn Store
-----------------------------------------------------------------------------------------
RegisterNetEvent("qb-pawnshop:server:sellPawnItems", function(itemName, itemAmount, itemPrice)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local totalPrice = (tonumber(itemAmount) * itemPrice)

    if Player.Functions.RemoveItem(itemName, tonumber(itemAmount)) then
        if Config.SocietyMoney then
            TriggerEvent('qb-bossmenu:server:addAccountMoney','sydpawn', totalPrice)
        else
            Player.Functions.AddMoney("cash", totalPrice)
        end
        TriggerClientEvent("QBCore:Notify", src, Lang:t('success.sold', {value = tonumber(itemAmount), value2 = QBCore.Shared.Items[itemName].label, value3 = totalPrice}), 'success')
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[itemName], 'remove')
    else
        TriggerClientEvent("QBCore:Notify", src, Lang:t('error.no_items'), "error")
    end
end)

QBCore.Functions.CreateCallback('qb-pawnshop:server:getInv', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    local inventory = Player.PlayerData.items

    return cb(inventory)
end)
-----------------------------------------------------------------------------------------
-- Billing
-----------------------------------------------------------------------------------------
RegisterServerEvent("qb-pawnshop:server:Charge", function(citizen, price)
    local src = source
    local biller = QBCore.Functions.GetPlayer(source)
    local billed = QBCore.Functions.GetPlayer(tonumber(citizen))
    local amount = tonumber(price)
	if billed ~= nil then
		if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
			if amount and amount > 0 then
                billed.Functions.AddMoney('cash', amount, "pawn-payment")
                TriggerEvent('qb-bossmenu:server:removeAccountMoney','sydpawn', amount)
                TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, '$'..amount..' payment received.', 'success') -- CUSTOMER NOTIFICATION OF PAYMENT
                TriggerClientEvent('QBCore:Notify', biller.PlayerData.source, '$'..amount..' payment sent successfully.', 'success') -- EMPLOYEE NOTIFICATION OF PAYMENT
			else TriggerClientEvent('QBCore:Notify', src, 'Must Be A Valid Amount Above 0', 'error')	end
		else TriggerClientEvent('QBCore:Notify', src, 'You cannot pay yourself...', 'error') end
	else TriggerClientEvent('QBCore:Notify', src, 'Person not available', 'error') end
end)
