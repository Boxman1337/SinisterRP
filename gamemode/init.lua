GM.Name = "SinisterRP"
GM.Author = "Boxman1337"
GM.Email = "N/A"
GM.Website = "N/A"

-- Specifies which gamemode to derive from

DeriveGamemode("sandbox")

-- Specifies standard .lua files to be downloaded by connecting clients

AddCSLuaFile("cl_init.lua")

-- Specifies module .lua files to be downloaded by connecting clients

AddCSLuaFile("modules/hud/cl_hud.lua")
AddCSLuaFile("modules/menu/cl_menu.lua")

-- Specifies module .lua files to be included by the server on startup

include("modules/database/start_database.lua")



