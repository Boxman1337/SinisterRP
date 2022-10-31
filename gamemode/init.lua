
-- Specifies standard .lua files to be downloaded by connecting clients

AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

-- Specifies module .lua files to be downloaded by connecting clients

AddCSLuaFile("modules/hud/cl_hud.lua")
AddCSLuaFile("modules/menu/cl_menu.lua")

-- Specifies standard .lua files to be included by the server on startup

include("shared.lua")

-- Specifies module .lua files to be included by the server on startup

include("modules/database/start_database.lua")



