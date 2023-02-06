QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('lucky-clues:CluePrice', function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Price = Config.InfoCost
    if Player.PlayerData.money.bank >= Price then
        Player.Functions.RemoveMoney('bank', Price, 'Suspicious Payment')
    else
	TriggerClientEvent('QBCore:Notify', src, 'You are poor, leave!', 'error')
    end
end)
