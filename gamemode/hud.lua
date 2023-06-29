--File containing the code for HUD

function HUD()
    local client=LocalPlayer()
    --client event if player is alive
    if !client:Alive() then
        return 

    end
    --drawing a rounded box for the hud
    draw.RoundedBox(0,0,ScrH() - 100,250,100, Color(50,50,50,250))
    --Text box for health
    draw.SimpleText("Health: "..client:Health(),"DermaDefaultBold",10,ScrH()-90,Color(255,255,255,255,0,0))
    --health bar to represent player health
    draw.RoundedBox(0,10,ScrH()-75,math.Clamp(client:Health(),0,100)*2.25,15,Color(0,255,0,255))

    --weapon details
    draw.RoundedBox(0,255,ScrH()-70,125,70, Color(30,30,30,230))

    --checking and retrieving the weapon name
    if (client:GetActiveWeapon():GetPrintName()~=nil) then
        draw.SimpleText(client:GetActiveWeapon():GetPrintName(),"DermaDefaultBold",260,ScrH()-60, Color(255,255,255,255),0,0)
    end

end 

--hooking the hud function to make it appear
hook.Add("HUDPaint","HUDDisplay",HUD)

--function for hiding hud
function HideHud(name)
    for k,v in pairs({"CHudHealth","CHudAmmo"}) do 
        if name==v then
            return false 
        end
    end


end

--hooking the hidehud function to make it work
hook.Add("HUDShouldDraw","Hidedefautlhud",HideHud)
