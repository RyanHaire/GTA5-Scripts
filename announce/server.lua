RegisterServerEvent("announce")
AddEventHandler("announce", function(param)
    print("^7[^1Announcement^7]^2" .. param)
    TriggerClientEvent(
        "chat:addMessage", -- event
        -1,  -- playerid (-1 for all clients)
        "^7[^1Announcement^7]^2" .. param -- value 
    )
end)

-- [[ ^1, ^2 ]]