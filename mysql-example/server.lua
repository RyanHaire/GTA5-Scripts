RegisterCommand("save", function(source, args)
    local argString = table.concat(args, " ")

    MySQL.Async.insert(
        'INSERT INTO main (id, name, args) VALUES (@id, @name, @args)', 
        {['@id'] = source, ['@name'] = GetPlayerName(source), ['@args'] = argString },
        function(result)
            TriggerClientEvent("output", source, "^2" .. argString .. "^0")
        end 
    )
end)