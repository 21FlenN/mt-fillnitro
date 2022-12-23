QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('mt-fillnitro:server:tensoitemdonitro', function(source, cb)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local nitro = player.Functions.GetItemByName("mechanic_nitrous_empty")
    local phone = player.Functions.GetItemByName("phone")
    if nitro ~= nil and phone ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

RegisterNetEvent('mt-fillnitro:server:tenscrypto', function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local success = exports['qb-phone']:hasEnough(src, 'gne', 2)
    if success then
        exports['qb-phone']:RemoveCrypto(src, 'gne', 2)
        player.Functions.RemoveItem('mechanic_nitrous_empty', 1)
        player.Functions.AddItem('mechanic_nitrous', 1)
    else
        TriggerClientEvent('QBCore:Notify', src, 'Não tens gne suficiente', 'error')
    end
end)

RegisterNetEvent('mt-fillnitro:server:darmerdas', function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
end)