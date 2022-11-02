GM.Name = "SinisterRP"
GM.Author = "Boxman1337"
GM.Email = "N/A"
GM.Website = "N/A"

-- Specifies which gamemode to derive from

DeriveGamemode("sandbox")

-- Specifies module .lua files to be loaded by the clients

include("modules/hud/cl_hud.lua")
include("modules/menu/cl_menu.lua")
