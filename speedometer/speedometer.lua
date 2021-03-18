function text(content)
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(1.9, 1.9)
    SetTextEntry("STRING")
    AddTextComponent(content)
    DrawText(0.2, 0.7)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2)
        -- [[ 
        --  km/h factor = 3.6
        --  mph factor = 2.2369
        -- ]]
        local speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false)) * 3.6

        -- check if the ped is in a vehicle
        if(IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
            text(math.floor(speed))
        end
    end
end)