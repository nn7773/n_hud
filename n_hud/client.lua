-- Hud
local serverName = "NN.TEST - Roleplay v1.0.0" -- Server name
local position = {x = 0.48, y = 0.97} 
local scale = 0.35
local playerCount = 0

RegisterNetEvent('updatePlayerCount')
AddEventHandler('updatePlayerCount', function(count)
    playerCount = count
end)

Citizen.CreateThread(function()
    while true do
        local text = serverName .. " - " .. playerCount .. "/32" -- Player count, you can change to whatever you want
        SetTextFont(0)
        SetTextProportional(1)
        SetTextScale(scale, scale)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(true)
        AddTextComponentString(text)
        DrawText(position.x, position.y)
        Citizen.Wait(1)
    end
end)
