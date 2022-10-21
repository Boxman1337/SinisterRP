
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

end

hook.Add("HUDPaint", "DrawHUD", DrawHUD)