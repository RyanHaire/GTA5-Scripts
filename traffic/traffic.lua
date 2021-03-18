local config = {
    pedFrequency = 1.0,
    trafficFrequency = 1.0,
    --[[ 0.0 ]]
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        SetPedDensityMultiplierThisFrame(config.pedFrequency)
        SetScenarioPedDensityMultiplierThisFrame(config.pedFrequency, config.pedFrequency)

        SetRandomVehicleDensityMultiplierThisFrame(config.trafficFrequency)
        SetParkedVehicleDensityMultiplierThisFrame(config.trafficFrequency)
        SetVehicleDensityMultiplierThisFrame(config.trafficFrequency)
    end
end)