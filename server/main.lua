QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('lucky-clues:CluePrice',function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Price = Config.InfoCost
    if Player.PlayerData.money.bank >= Price then
        Player.Functions.RemoveMoney('Bank', Price, 'Suspicious Payment')
        cb(true)
    else
        cb(false)
	      TriggerClientEvent('QBCore:Notify', src, 'You are poor, leave!', 'error')
    end
end)
