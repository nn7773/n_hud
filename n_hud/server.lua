RegisterNetEvent('getPlayerCount')
AddEventHandler('getPlayerCount', function()
    local playerCount = #GetPlayers()
    TriggerClientEvent('updatePlayerCount', -1, playerCount)
end)

Citizen.CreateThread(function()
    while true do
        TriggerEvent('getPlayerCount')
        Citizen.Wait(1)
    end
end)