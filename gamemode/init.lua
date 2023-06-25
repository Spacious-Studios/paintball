--adding cs lua files
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("hud.lua")


--including files
include("shared.lua")




function GM:PlayerSpawn(ply)
    ply:SetMaxHealth(100)
    ply:SetRunSpeed(300)
    ply:Give("paintball_gun_blue _model1")
    ply:SetupHands()


end
