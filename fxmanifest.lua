fx_version 'cerulean'
game 'gta5'
author 'Lucky'
description 'Meta unlock script'
version '1.0.0'


shared_scripts {
    'config.lua',
}

client_scripts {
    'client/main.lua',
    'client/menu.lua'
}

server_scripts {
    'server/main.lua',
}

dependencies {
    'qb-core',
    'qb-phone'
}


lua54 'yes'