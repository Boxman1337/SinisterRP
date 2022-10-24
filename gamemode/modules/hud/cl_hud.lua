
-- HideHUD hides all elements of the default Gmod HUD
function HideHUD(name)
    for k, v in pairs({ "CHudHealth", "CHudBattery" }) do
        if name == v then
            return false
        end
    end
end
hook.Add("HUDShouldDraw", "HideDefaultHUD", HideHUD)

-- DrawHUD draws our custom HUD on the screen
function DrawHUD()

    local client = LocalPlayer()

    local screenWidth = ScrW()
    local screenHeight = ScrH()

    local screenCenter = screenWidth / 2

    local mainInterfaceBoxWidth = 600
    local mainInterfaceBoxHeight = 120

    local mainInterfaceCenterPoint = screenCenter - mainInterfaceBoxWidth / 2
    local mainInterfaceBottomPlacement = screenHeight - mainInterfaceBoxHeight

    draw.RoundedBoxEx(  20,
                        mainInterfaceCenterPoint,
                        mainInterfaceBottomPlacement,
                        mainInterfaceBoxWidth,
                        mainInterfaceBoxHeight,
                        Color(40, 40, 40, 230),
                        true,
                        true,
                        false,
                        false
                    )

    local maxHealth = client:GetMaxHealth()
    local maxArmor = client:GetMaxArmor()

    local currentHealth = client:Health()
    local currentArmor = client:Armor()

    local currentHealthRatio = currentHealth / maxHealth
    local currentArmorRatio = currentArmor / maxArmor

    local mainInterfaceHealthBar = {
        { x = mainInterfaceCenterPoint + 50, y = mainInterfaceBottomPlacement + 32},
        { x = mainInterfaceCenterPoint + 550, y = mainInterfaceBottomPlacement + 32},
        { x = mainInterfaceCenterPoint + 575, y = mainInterfaceBottomPlacement + 60},
        { x = mainInterfaceCenterPoint + 25 , y = mainInterfaceBottomPlacement + 60}
    }

    local mainInterfaceCurrentHealth = {
        { x = screenCenter - 245 + (screenCenter - mainInterfaceBottomPlacement + 245) * (1 - currentHealthRatio), y = mainInterfaceBottomPlacement + 35},
        { x = screenCenter + 245 + (mainInterfaceBottomPlacement - 245 - screenCenter) * (1 - currentHealthRatio), y = mainInterfaceBottomPlacement + 35},
        { x = screenCenter + 265 + (mainInterfaceBottomPlacement - 265 - screenCenter) * (1 - currentHealthRatio), y = mainInterfaceBottomPlacement + 57},
        { x = screenCenter - 265 + (screenCenter - mainInterfaceBottomPlacement + 265) * (1 - currentHealthRatio), y = mainInterfaceBottomPlacement + 57}
    }

    local mainInterfaceArmorBar = {
        { x = mainInterfaceCenterPoint + 25, y = mainInterfaceBottomPlacement + 66},
        { x = mainInterfaceCenterPoint + 575, y = mainInterfaceBottomPlacement + 66},
        { x = mainInterfaceCenterPoint + 550, y = mainInterfaceBottomPlacement + 85},
        { x = mainInterfaceCenterPoint + 50, y = mainInterfaceBottomPlacement + 85}
    }

    local mainInterfaceCurrentArmor = {
        { x = screenCenter - 265 + (screenCenter - mainInterfaceBottomPlacement + 265) * (1 - currentArmorRatio), y = mainInterfaceBottomPlacement + 69},
        { x = screenCenter + 265 + (mainInterfaceBottomPlacement - 265 - screenCenter) * (1 - currentArmorRatio), y = mainInterfaceBottomPlacement + 69},
        { x = screenCenter + 245 + (mainInterfaceBottomPlacement - 245 - screenCenter) * (1 - currentArmorRatio), y = mainInterfaceBottomPlacement + 82},
        { x = screenCenter - 245 + (screenCenter - mainInterfaceBottomPlacement + 245) * (1 - currentArmorRatio), y = mainInterfaceBottomPlacement + 82}
    }

    surface.SetDrawColor(120, 120, 120, 60)
    draw.NoTexture()
    surface.DrawPoly(mainInterfaceHealthBar)
    surface.DrawPoly(mainInterfaceArmorBar)

    surface.SetDrawColor(255, 0, 0, 200)
    surface.DrawPoly(mainInterfaceCurrentHealth)

    surface.SetDrawColor(0, 120, 200, 200)
    surface.DrawPoly(mainInterfaceCurrentArmor)

    draw.SimpleText(currentHealth .. " HP", "DermaDefaultBold", screenCenter - 15, mainInterfaceBottomPlacement + 40, Color(255, 255, 255, 255))
    draw.SimpleText(currentArmor .. " Armor", "DermaDefaultBold", screenCenter - 20, mainInterfaceBottomPlacement + 67, Color(255, 255, 255, 255))

end

hook.Add("HUDPaint", "DrawHUD", DrawHUD)

