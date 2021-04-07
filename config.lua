Config = {}
Config.Locale = 'en'

Config.Money = true -- Remove money // Remover dinheiro
Config.BlackMoney = true -- Remove Black Money // Remover dinheiro sujo

Config.Items = {
    ['phone'] = {
        give_burn = 'burned_phone'
    },
    ['gps'] = {
        give_burn = 'burned_gps'
    },
    ['radio'] = {
        give_burn = 'burned_radio'
    },
    ['vape'] = {
        give_burn = 'burned_vape'
    },
    ['cigarett'] = {
        give_burn = false
    },
    ['lighter'] = {
        give_burn = false
    }
}