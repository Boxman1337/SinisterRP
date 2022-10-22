

function DrawHUD()

    local screenWidth = ScrW()
    local screenHeight = ScrH()

    local mainInterfaceBoxWidth = 600
    local mainInterfaceBoxHeight = 120

    local mainInterfaceCenterPoint = screenWidth / 2 - mainInterfaceBoxWidth / 2
    local mainInterfaceBottomPlacement = screenHeight - mainInterfaceBoxHeight

    draw.RoundedBoxEx(  20,
                        mainInterfaceCenterPoint,
                        mainInterfaceBottomPlacement,
                        mainInterfaceBoxWidth,
                        mainInterfaceBoxHeight,
                        Color(40, 40, 40, 150),
                        true,
                        true,
                        false,
                        false
                    )

    local Mat = Material("hud/Resourcebar.png", vertexlitgeneric)

    surface.SetMaterial(Mat)
    surface.SetDrawColor(225, 20, 20, 255)
    surface.DrawTexturedRect(mainInterfaceCenterPoint + 20, mainInterfaceBottomPlacement + 25, 560, 36)

end

hook.Add("HUDPaint", "DrawHUD", DrawHUD)