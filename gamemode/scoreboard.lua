local ScoreboardDerma = nil

--function for showing scoreboard
function GM:ScoreboardShow()
    --checking if scoreboardderma is not valid 
    if !IsValid(ScoreboardDerma) then
        --creating DFrame
        ScoreboardDerma=vgui.Create("DFrame")
        --setting size
        ScoreboardDerma.SetSize(750,1000)
        --setting position
        ScoreboardDerma.SetPos(ScrW()/2-325,ScrH()/2-250)
        --setting title of the scoreboard
        ScoreboardDerma.SetTitle("Scoreboard")
        --setting draggable to false
        ScoreboardDerma.SetDraggable(false)
        -- we dont need a close button for scoreboard so we disable it
        ScoreboardDerma.ShowCloseButton(false)
        --painting the scoreboard
        ScoreboardDerma.Paint=function()
            draw.RoundedBox(5,0,0,ScoreboardDerma:GetWide(),ScoreboardDerma:GetTall(),Color(60,60,60,255))
        end
    end
    --case if scoreboardderma is valid
    if IsValid(ScoreboardDerma) then
        --showing the scoreboard
        ScoreboardDerma:Show()
        ScoreboardDerma:MakePopup()
        --setting keyboard input to false
        ScoreboardDerma:SetKeyboardInputEnabled(false)

    end
end


--function for hiding scoreboard
function GM:ScoreboardHide()
    if IsValid(ScoreboardDerma) then
        --hiding the scoreboard
        ScoreboardDerma:Hide()
    end

end