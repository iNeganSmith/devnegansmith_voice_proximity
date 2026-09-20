fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'DevNeganSmith'
description 'Indicador visual de proximidad para pma-voice. Compatible con ESX Legacy, QBCore, Qbox/QBX y Standalone.'
version '1.0.2'

dependency 'pma-voice'

shared_script 'config.lua'
client_script 'client.lua'

-- Mantiene la configuración editable cuando el recurso se distribuye mediante FiveM Asset Escrow.
escrow_ignore {
    'config.lua'
}
