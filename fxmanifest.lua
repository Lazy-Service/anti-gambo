fx_version 'bodacious'

game 'gta5'
lua54 'yes'
version '1.0.0'
author 'lazy'

shared_scripts {
    'config.lua',
    'framework.lua'
}

client_scripts {
    'cl_main.lua'
}

server_scripts {
    'sv_main.lua',
    'framework.lua',
    'config.lua'
}