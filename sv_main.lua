RegisterNetEvent('kickgambo')
AddEventHandler('kickgambo', function()

    if Config.framework == "ESX" or Config.framework == "OLDESX" then
        local xPlayer = ESX.GetPlayerFromId(source)
        local plyname = xPlayer.getName()
        sendToDiscord(1127128, "Gambo Settings Kick", "The player **".. plyname .."** was kicked because of gambo settings", "Lazy © 2023")
        DropPlayer(source, "Gambo Settings")
    else
        local plyname = GetPlayerName(source)
        sendToDiscord(1127128, "Gambo Settings Kick", "The player **".. plyname .."** was kicked because of gambo settings", "Lazy © 2023")
        DropPlayer(source, "Gambo Settings")
    end

end)

function sendToDiscord(color, name, message, footer)
    local embed = {
          {
              ["color"] = color,
              ["title"] = "**".. name .."**",
              ["description"] = message,
              ["footer"] = {
                  ["text"] = footer,
              },
          }
      }

    PerformHttpRequest(Config.webhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
end
