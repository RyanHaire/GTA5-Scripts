local color = {
    r=247, 
    b=223,
    g=88,
    a=255
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5)
        SetTextFont(0) -- 0 -> 4
        SetTextScale(0.3, 0.3)
        SetTextColour(color.r, color.b, color.g, color.a)
        SetTextEntry("STRING")
        AddTextComponentString("Dev Server!")
        DrawText(0.0001, 0.0001)

        DrawRect(150, 100, 3.2, 0.05, 66, 134, 244, 245)
    end
end)