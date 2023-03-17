QBCore = exports['qb-core']:GetCoreObject()

if Config.MultiPed then
        print('check')
    CreateThread(function()
        local Ped = CreatePed(0, Config.Ped, Config.PedLocation.x, Config.PedLocation.y, Config.PedLocation.z- 1.0, Config.PedLocation.w, false, false)
        TaskStartScenarioInPlace(Ped, Config.PedScenario, true)
        FreezeEntityPosition(Ped, true)
        SetEntityInvincible(Ped, true)
        SetBlockingOfNonTemporaryEvents(Ped, true)
        local Ped1 = CreatePed(0, Config.Ped1, Config.Ped1Location.x, Config.Ped1Location.y, Config.Ped1Location.z- 1.0, Config.Ped1Location.w, false, false)
        TaskStartScenarioInPlace(Ped1, Config.PedScenario, true)
        FreezeEntityPosition(Ped1, true)
        SetEntityInvincible(Ped1, true)
        SetBlockingOfNonTemporaryEvents(Ped1, true)
        local Ped2 = CreatePed(0, Config.Ped2, Config.Ped2Location.x, Config.Ped2Location.y, Config.Ped2Location.z- 1.0, Config.Ped2Location.w, false, false)
        TaskStartScenarioInPlace(Ped2, Config.PedScenario, true)
        FreezeEntityPosition(Ped2, true)
        SetEntityInvincible(Ped2, true)
        SetBlockingOfNonTemporaryEvents(Ped2, true)
        local Ped3 = CreatePed(0, Config.Ped3, Config.Ped3Location.x, Config.Ped3Location.y, Config.Ped3Location.z- 1.0, Config.Ped3Location.w, false, false)
        TaskStartScenarioInPlace(Ped3, Config.PedScenario, true)
        FreezeEntityPosition(Ped3, true)
        SetEntityInvincible(Ped3, true)
        SetBlockingOfNonTemporaryEvents(Ped3, true)
        exports['qb-target']:AddTargetEntity(Ped, {
            options = {
                {
                    icon = Config.ClueIcon,
                    label = Config.ClueLabel,
                    action = function ()
                        QBCore.Functions.TriggerCallback('lucky-clues:CluePrice',function(paid)
                        if paid then
                            TriggerEvent('lucky-clues:ClueMenuWeed')
                        end
                    end)
                end,
                },
            },
            distance = 2.0
        })
        exports['qb-target']:AddTargetEntity(Ped1, {
            options = {
                {
                    icon = Config.ClueIcon,
                    label = Config.ClueLabel,
                    action = function ()
                        QBCore.Functions.TriggerCallback('lucky-clues:CluePrice',function(paid)
                        if paid then
                            TriggerEvent('lucky-clues:ClueMenuMeth')
                        end
                    end)
                end,
                },
            },
            distance = 2.0
        })
        exports['qb-target']:AddTargetEntity(Ped2, {
            options = {
                {
                    icon = Config.ClueIcon,
                    label = Config.ClueLabel,
                    action = function ()
                        QBCore.Functions.TriggerCallback('lucky-clues:CluePrice',function(paid)
                        if paid then
                            TriggerEvent('lucky-clues:ClueMenuCoc')
                        end
                    end)
                end,
                },
            },
            distance = 2.0
        })
        exports['qb-target']:AddTargetEntity(Ped3, {
            options = {
                {
                    icon = Config.ClueIcon,
                    label = Config.ClueLabel,
                    action = function ()
                        QBCore.Functions.TriggerCallback('lucky-clues:CluePrice',function(paid)
                        if paid then
                            TriggerEvent('lucky-clues:ClueMenuHeroin')
                        end
                    end)
                end,
                },
            },
            distance = 2.0
        })
    end)
else
    CreateThread(function()
        QBCore.Functions.LoadModel(Config.Ped)
            local Ped = CreatePed(0, Config.Ped, Config.PedLocation.x, Config.PedLocation.y, Config.PedLocation.z-1.0, Config.PedLocation.w, false, false)
            TaskStartScenarioInPlace(Ped, Config.PedScenario, true)
            FreezeEntityPosition(Ped, true)
            SetEntityInvincible(Ped, true)
            SetBlockingOfNonTemporaryEvents(Ped, true)
            exports['qb-target']:AddTargetEntity(Ped, {
                options = {
                    {
                        icon = Config.ClueIcon,
                        label = Config.ClueLabel,
                        action = function ()
                            QBCore.Functions.TriggerCallback('lucky-clues:CluePrice',function(paid)
                            if paid then
                                TriggerEvent('lucky-clues:ClueMenu')
                            end
                        end)
                    end,
                    },
                },
                distance = 2.0
            })
    end)
end

RegisterNetEvent('lucky-clues:WeedInfo', function()
    TriggerServerEvent('lucky-clues:CluePrice')
    SetTimeout(Config.WaitTime, function()
        TriggerServerEvent('qb-phone:server:sendNewMail', {
            sender = Config.WeedSender,
            subject = Config.WeedSubject,
            message = Config.WeedMessage,
            button = {}
        })
    end)
end)

RegisterNetEvent('lucky-clues:MethInfo', function()
    TriggerServerEvent('lucky-clues:CluePrice')
    SetTimeout(Config.WaitTime, function()
        TriggerServerEvent('qb-phone:server:sendNewMail', {
            sender = Config.MethSender,
            subject = Config.MethSubject,
            message = Config.MethMessage,
            button = {}
        })
    end)
end)

RegisterNetEvent('lucky-clues:CocInfo', function()
    TriggerServerEvent('lucky-clues:CluePrice')
    SetTimeout(Config.WaitTime, function()
        TriggerServerEvent('qb-phone:server:sendNewMail', {
            sender = Config.CocSender,
            subject = Config.CocSubject,
            message = Config.CocMessage,
            button = {}
        })
    end)
end)

RegisterNetEvent('lucky-clues:HeroinInfo', function()
    TriggerServerEvent('lucky-clues:CluePrice')
    SetTimeout(Config.WaitTime, function()
        TriggerServerEvent('qb-phone:server:sendNewMail', {
            sender = Config.HeroinSender,
            subject = Config.HeroinSubject,
            message = Config.HeroinMessage,
            button = {}
        })
    end)
end)