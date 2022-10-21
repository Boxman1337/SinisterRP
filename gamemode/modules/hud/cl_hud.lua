
function DrawHUD()
    draw.RoundedBox(0, 0, 0, 100, 100, Color(200, 200, 200, 180))
end


hook.Add("HUDPaint", "DrawHUD", DrawHUD)