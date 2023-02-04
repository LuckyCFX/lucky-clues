QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('lucky-clues:ClueMenu', function (ClueMenu)

    exports['qb-menu']:openMenu({
        {
            header = Config.MenuHeader,
            icon = Config.MenuIcon,
            isMenuHeader = true,
        },
        {
            header = Config.WeedHeader,
            txt = Config.WeedTxt,
            icon = Config.WeedIcon,
		    message = Config.WeedMenuMessage,
            params = {
                event = 'lucky-clues:WeedInfo',
            }
        },
        {
            header = Config.MethHeader,
            txt = Config.MethTxt,
            icon = Config.MethIcon,
		    message = Config.MethMenuMessage,
            params = {
                event = 'lucky-clues:MethInfo',
            }
        },
        {
            header = Config.CocHeader,
            txt = Config.CocTxt,
            icon = Config.CocIcon,
		    message = Config.CocMenuMessage,
            params = {
                event = 'lucky-clues:CocInfo',
            }
        },
    })
end)

RegisterNetEvent('lucky-clues:WeedInfo', function()
    TriggerServerEvent('lucky-clues:CluePrice')
    SetTimeout(math.random(200000, 300000), function()
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
    SetTimeout(math.random(200000, 300000), function()
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
    SetTimeout(math.random(200000, 300000), function()
        TriggerServerEvent('qb-phone:server:sendNewMail', {
            sender = Config.CocSender,
            subject = Config.CocSubject,
            message = Config.CocMessage,
            button = {}
        })
    end)
end)


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
                        TriggerEvent('lucky-clues:ClueMenu')
                    end,
                },
            },
            distance = 2.0
        })
end)