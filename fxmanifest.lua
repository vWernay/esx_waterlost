fx_version 'cerulean'
game 'gta5'

author 'victorBOY'
description 'Perder itens ao cair na água.'
version '1.0.2'

lua54 'yes'
client_scripts {
	'client/*.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'locales/*.lua',
	'config.lua',
	'server/*.lua'
}
