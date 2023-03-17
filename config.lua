Config = Config or {}

Config.MultiPed = false; -- choose if you would like one ped or 4

Config.Ped = 'ig_lestercrest' -- Change me
Config.PedScenario = 'WORLD_HUMAN_CLIPBOARD_FACILITY' -- Change me
Config.PedLocation = vector4(-244.21, -1002.46, 29.1, 48.53) -- Change me

-- Multi Ped (will use the ped above)
Config.Ped1 = 'ig_lestercrest' -- Change me
Config.Ped1Scenario = 'WORLD_HUMAN_CLIPBOARD_FACILITY' -- Change me
Config.Ped1Location = vector4(-245.11, -1002.07, 29.11, 345.68) -- Change me

Config.Ped2 = 'ig_lestercrest' -- Change me
Config.Ped2Scenario = 'WORLD_HUMAN_CLIPBOARD_FACILITY' -- Change me
Config.Ped2Location = vector4(-244.81, -999.4, 29.13, 31.33) -- Change me

Config.Ped3 = 'ig_lestercrest' -- Change me
Config.Ped3Scenario = 'WORLD_HUMAN_CLIPBOARD_FACILITY' -- Change me
Config.Ped3Location = vector4(-243.3, -998.2, 29.13, 262.66) -- Change me

-- Change to your liking
Config.WaitTime = 10000 -- Time before the email is sent
Config.InfoCost = 1000 -- Cost to talk to the ped (non-refundable)(same price even with multi ped)


-- Ped Menu
Config.ClueIcon = 'fa-solid fa-question'
Config.ClueLabel = 'Chat' .. " ($".. Config.InfoCost.. ")"
Config.ClueHeader = ''
Config.MenuHeader = 'Who is this guy?'
Config.MenuIcon = 'fa-solid fa-info'

-- Weed
Config.WeedHeader = 'Weed' -- Hint is currently set for ps-drugprocessing (default)
Config.WeedTxt = ''
Config.WeedIcon = 'fa-solid fa-cannabis'
Config.WeedMenuMessage = ''
Config.WeedSender = 'Lester Crest'
Config.WeedSubject = 'Weed Growing'
Config.WeedMessage = 'Go up north and find the farm, bring it to my friends and they will show you what to do!'


-- Meth
Config.MethHeader = 'Meth' -- Hint is currently set for ps-drugprocessing (default)
Config.MethTxt = ''
Config.MethIcon = 'fa-solid fa-flask'
Config.MethMenuMessage = ''
Config.MethSender = 'Walter White'
Config.MethSubject = 'Cooking Methamphetamine'
Config.MethMessage = 'If walter thought me anything was that meth was made with chemicals, and a special key to the lab!'

-- Cocaine
Config.CocHeader = 'Cocaine' -- Hint is currently set for ps-drugprocessing (default)
Config.CocTxt = ''
Config.CocIcon = 'fa-brands fa-pagelines'
Config.CocMenuMessage = ''
Config.CocSender = 'Pablo Escobar'
Config.CocSubject = 'Cocaine Processing'
Config.CocMessage = 'The farm in sandy grows corn, or so I thought, they also said something about a key!'

-- Heroin
Config.HeroinHeader = 'Heroin' -- Hint is currently set for ps-drugprocessing (default)
Config.HeroinTxt = ''
Config.HeroinIcon = 'fa-solid fa-syringe'
Config.HeroinMenuMessage = ''
Config.HeroinSender = 'El Chapo'
Config.HeroinSubject = 'Heroin Making'
Config.HeroinMessage = 'The blue flowers by the ocean are so beautiful, I want to take some home!'
