RegisterServerEvent("announce")
AddEventHandler("announce", function(param)
    if IsPlayerAceAllowed(source, "administrator") then
        print("^7[^1Announcement^7]^2" .. param)
        TriggerClientEvent(
            "chat:addMessage", -- event
            -1,  -- playerid (-1 for all clients)
            "^7[^1Announcement^7]^2" .. param -- value 
        )
    else
        TriggerClientEvent("no-perms", source)
    end
end)