fx_version 'cerulean'
game 'gta5'

author 'victorBOY'
description 'Lose items on falling into Water'
version '1.1'

lua54 'yes'
client_script 'client/*.lua'

server_scripts {
	'@es_extended/locale.lua',
	'locales/*.lua',
	'config.lua',
	'server/*.lua'
}
