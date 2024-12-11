-- ####################################################### 
-- ##███╗░░██╗░█████╗░██╗░░░██╗███████╗░█████╗░██╗░░░░░ ##
-- ##████╗░██║██╔══██╗██║░░░██║██╔════╝██╔══██╗██║░░░░░ ##
-- ##██╔██╗██║███████║██║░░░██║█████╗░░███████║██║░░░░░ ##
-- ##██║╚████║██╔══██║██║░░░██║██╔══╝░░██╔══██║██║░░░░░ ##
-- ##██║░╚███║██║░░██║╚██████╔╝██║░░░░░██║░░██║███████╗ ##
-- ##╚═╝░░╚══╝╚═╝░░╚═╝░╚═════╝░╚═╝░░░░░╚═╝░░╚═╝╚══════╝ ##
-- ####################################################### 

-- Owner                 : Naufal Mulyarizki 
-- Developer             : Naufal#8714
-- Nama Lengkap          : Naufal
-- Repositories Github   : 

--[[ FX Information ]]--
fx_version 'cerulean'
games { 'gta5' }
lua54 'yes'

--[[ Resource Information ]]--
author 'Naufal'
description 'Naufal Copy Coords'

--[[ Shared Script ]]--
shared_script {
    '@ox_lib/init.lua', -- Comment ketika tidak digunakan
    'shared/*.lua',
}

--[[ Client Script ]]--
client_scripts {
    'client/*.lua',
}