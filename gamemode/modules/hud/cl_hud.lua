
function DrawHUD()
    
    local ScreenWidth = ScrW()
    local ScreenHeight = ScrH()

    local ScreenCenterpointWidth = ScreenWidth / 2

    local BaseBoxWidth = 600
    local BaseBoxHeight = 90
    local BaseBoxX = ScreenCenterpointWidth - BaseBoxWidth / 2
    local BaseBoxY = ScreenHeight - BaseBoxHeight

    local BaseBoxCornerRadius = 25

    local BaseBoxRoundTopLeft = true
    local BaseBoxRoundTopRight = true
    local BaseBoxRoundBottomLeft = false
    local BaseBoxRoundBottomRight = false

    local L1ScaleOffset = 10
    
    local BaseBoxL1Width = BaseBoxWidth - L1ScaleOffset
    local BaseBoxL1Height = BaseBoxHeight - L1ScaleOffset / 2
    local BaseBoxL1X = ScreenCenterpointWidth - BaseBoxL1Width / 2
    local BaseBoxL1Y = ScreenHeight - BaseBoxL1Height

    local BaseBoxL1CornerRadius = BaseBoxCornerRadius - L1ScaleOffset

    draw.RoundedBoxEx(  BaseBoxCornerRadius, 
                        BaseBoxX, 
                        BaseBoxY, 
                        BaseBoxWidth, 
                        BaseBoxHeight, 
                        Color(0, 0, 0, 230), 
                        BaseBoxRoundTopLeft, 
                        BaseBoxRoundTopRight,
                        BaseBoxRoundBottomLeft,
                        BaseBoxRoundBottomRight
                    )

    draw.RoundedBoxEx(  BaseBoxL1CornerRadius, 
                        BaseBoxL1X, 
                        BaseBoxL1Y, 
                        BaseBoxL1Width, 
                        BaseBoxL1Height, 
                        Color(80, 80, 80, 140), 
                        BaseBoxRoundTopLeft, 
                        BaseBoxRoundTopRight,
                        BaseBoxRoundBottomLeft,
                        BaseBoxRoundBottomRight
                )

end


hook.Add("HUDPaint", "DrawHUD", DrawHUD)