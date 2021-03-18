
fx_version 'mysqlexample'
game 'gta5'

author 'Ryan Haire'
description 'My first mysql script'
version '1.0.0'

client_script 'client.lua'

server_scripts {
    "server.lua".
    "@myql-async/lib/MySQL.lua"
}