ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    end
end)

RegisterNetEvent('peqzcoletes:coletemin')
AddEventHandler('peqzcoletes:coletemin', function()

    anim("missmic4", "michael_tux_fidget")
    exports['progressBars']:startUI(3000, 'A EQUIPAR O COLETE')
    Citizen.Wait(3000)
    local playerPed = PlayerPedId()
    SetPedComponentVariation(playerPed, 9, 15, 2, 2)
    SetPedArmour(playerPed, 25)
end)

RegisterNetEvent('peqzcoletes:coletemed')
AddEventHandler('peqzcoletes:coletemed', function()

    anim("missmic4", "michael_tux_fidget")
    exports['progressBars']:startUI(3000, 'A EQUIPAR O COLETE')
    Citizen.Wait(3000)
    local playerPed = PlayerPedId()
    SetPedComponentVariation(playerPed, 9, 15, 2, 2)
    SetPedArmour(playerPed, 50)
end)

RegisterNetEvent('peqzcoletes:coletemax')
AddEventHandler('peqzcoletes:coletemax', function()
    anim("missmic4", "michael_tux_fidget")
    exports['progressBars']:startUI(3000, 'A EQUIPAR O COLETE')
    Citizen.Wait(3000)
    local playerPed = PlayerPedId()
    SetPedComponentVariation(playerPed, 9, 15, 2, 2)
    SetPedArmour(playerPed, 98)
end)

function anim(dict, anim)

    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do Citizen.Wait(100) end

    TaskPlayAnim(GetPlayerPed(-1), dict, anim, 8.0, 8.0, -1, 48, 1, false,
                 false, false)
end
