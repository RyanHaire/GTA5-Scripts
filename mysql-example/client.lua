RegisterNetEvent("output")
AddEventHandler("output", function(arg)
    TriggerEvent("chat:addMessage", {
        color = { 0, 255, 0 },
        args= { "[Success]", "Added " .. arg .. " into the database" }
    })
end)