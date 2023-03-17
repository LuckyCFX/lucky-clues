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
        {
            header = Config.HeroinHeader,
            txt = Config.HeroinTxt,
            icon = Config.HeroinIcon,
            message = Config.HeroinMenuMessage,
            params = {
                event = 'lucky-clues:HeroinInfo',
            }
        },
    })
end)

RegisterNetEvent('lucky-clues:ClueMenuWeed', function (ClueMenu)

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
    })
end)
RegisterNetEvent('lucky-clues:ClueMenuMeth', function (ClueMenu)

    exports['qb-menu']:openMenu({
        {
            header = Config.MenuHeader,
            icon = Config.MenuIcon,
            isMenuHeader = true,
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
    })
end)
RegisterNetEvent('lucky-clues:ClueMenuCoc', function (ClueMenu)

    exports['qb-menu']:openMenu({
        {
            header = Config.MenuHeader,
            icon = Config.MenuIcon,
            isMenuHeader = true,
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
RegisterNetEvent('lucky-clues:ClueMenuHeroin', function (ClueMenu)

    exports['qb-menu']:openMenu({
        {
            header = Config.MenuHeader,
            icon = Config.MenuIcon,
            isMenuHeader = true,
        },
        {
            header = Config.HeroinHeader,
            txt = Config.HeroinTxt,
            icon = Config.HeroinIcon,
            message = Config.HeroinMenuMessage,
            params = {
                event = 'lucky-clues:HeroinInfo',
            }
        },
    })
end)