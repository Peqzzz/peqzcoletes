ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('coletemin', function (source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('coletemin', 1)

    TriggerClientEvent('peqzcoletes:coletemin', source)

end)

ESX.RegisterUsableItem('coletemed', function (source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('coletemed', 1)

    TriggerClientEvent('peqzcoletes:coletemed', source)

end)

ESX.RegisterUsableItem('coletemax', function (source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('coletemax', 1)

    TriggerClientEvent('peqzcoletes:coletemax', source)

end)