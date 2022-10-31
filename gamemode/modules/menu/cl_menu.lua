local F4MenuPanel

function OpenF4Menu()
    if IsValid(F4MenuPanel) then
        F4MenuPanel:Show()
        F4MenuPanel:InvalidateLayout()
    else
        F4MenuPanel = vgui.Create("DPanel")

        local ScreenWidth = ScrW()
        local ScreenHeight = ScrH()

        local F4MenuPanelWidth = ScreenWidth * 0.7
        local F4MenuPanelHeight = ScreenHeight * 0.7

        local F4MenuPanelWidthOffset = F4MenuPanelWidth / 2
        local F4MenuPanelHeightOffset = F4MenuPanelHeight / 2

        F4MenuPanel:SetPos(ScreenWidth / 2 - F4MenuPanelWidthOffset, ScreenHeight / 2 - F4MenuPanelHeightOffset)
        F4MenuPanel:SetSize(F4MenuPanelWidth, F4MenuPanelHeight)

        function F4MenuPanel:Paint(w, h)
            draw.RoundedBox(8, 0, 0, w, h, Color(20, 100, 20, 200))
        end

    end
end

function CloseF4Menu()
    if F4MenuPanel then
        F4MenuPanel:Hide()
    end
end

function ToggleF4Menu()
    if not IsValid(F4MenuPanel) or not F4MenuPanel:IsVisible() then
        OpenF4Menu()
    else
        CloseF4Menu()
    end
end

function GM:PlayerButtonDown(ply, key)
    if key == KEY_F4 then
        ToggleF4Menu()
    end
end

