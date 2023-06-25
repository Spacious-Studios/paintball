--File containing the code for HUD

function HUD()
    local client=LocalPlayer()

    if !client:Alive() then
        return 

    end

    draw.RoundedBox(0,0,ScrH() - 100,250,100, Color(50,50,50,250))
    draw.SimpleText("Health: "..client:Health(),"DermaDefaultBold",10,ScrH()-90,Color(255,255,255,255,0,0))

end 

--hooking the hud function to make it appear
hook.Add("HUDPaint","HUDDisplay",HUD)

function HideHud(name)
    for k,v in pairs({"CHudHealth","CHudAmmo"}) do 
        if name==v then
            return false 
        end
    end


end

--hooking the hidehud function to make it work
hook.Add("HUDShouldDraw","Hidedefautlhud",HideHud)
