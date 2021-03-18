RegisterCommand("help", function(source, args)
    TriggerEvent("chat:addMessage", {
        color = { 255, 255, 255 },
        multiline = true,
        args = { GetPlayerName(PlayerId()), "This is the help command" }
    })
end, false)