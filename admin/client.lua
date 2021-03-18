RegisterCommand('announce', function(source, args)
    TriggerServerEvent('announce', table.concat(args, " "))
end)

RegisterNetEvent("no-perms")
AddEventHandler("no-perms", function()
    TriggerEvent("chat:addMessage", {
        color = { 255, 0, 0 },
        multiline = true,
        args = { "[Error]", "No perms to command." }
    })
end)