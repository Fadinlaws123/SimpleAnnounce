fx_version 'cerulean'
game 'gta5'

name 'SimpleAnnounce'
author 'fadin_laws'
description 'A Simple announcement script for your server!'
version '1.0.0'

client_scripts {
    'client/client.lua',
}

server_scripts {
    'server/server.lua',
    'server/versionChecker.lua'
}

shared_scripts {
    'config.lua',
}