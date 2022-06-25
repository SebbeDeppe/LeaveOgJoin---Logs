local webhook = "https://discord.com/api/webhooks/980227451533791233/b6jUd41v9dUhHAsbGg2KxAfPDKnKtYxLbqUwQW_kmoqPWX2mB2pFym9S7wbvLH2CqMH9" -- Indsæt dit eget webhook her, kontakt mig på discord for hjælp. (Ligger i ReadMe.md)
local name = "Leave og Join - LOGS [SEBBEDEPPE]" -- Navnet, ændre hvad du vil, er ligeglad.
local logo = "https://cdn.discordapp.com/attachments/705017727957336165/765153188524851200/1609855.png" -- Skal ende med png, jpg e.t.c. Behøves ikke at blive ændret



AddEventHandler('playerConnecting', function()
    local playerName = GetPlayerName(source)
    local playerIp = GetPlayerEndpoint(source)
    local playerHex = GetPlayerIdentifier(source)
    local playerPing = GetPlayerPing(source)
    local connecting = {
        {
            ["color"] = "1ea7d9",
            ["title"] = "SPILLER TILSLUTTER! :green_circle:  ",
            ["description"] = "Bruger navn : *"..playerName.."*\n\nBrugerens IP : *"..playerIp.."*\n\nSteam HEX-ID : *"..playerHex.."*\n Ping/Netværk : *"..playerPing.."*",
	        ["footer"] = "Remake af SebbeDeppe, SebastiaN#0001", {
                ["text"] = name,
                ["icon_url"] = logo,
            },
        }
    }

    
-- Ik ændre noget her.
PerformHttpRequest(webhook, function (err, text, headers) end, 'POST', json.encode({username = name, embeds = connecting}), { ['Content-Type'] = 'application/json' })
end)


AddEventHandler('playerDropped', function(reason)
    local playerName = GetPlayerName(source)
    local playerIp = GetPlayerEndpoint(source)
    local playerPing = GetPlayerPing(source)
    local playerHex = GetPlayerIdentifier(source)
    local playerId = source
    local disconnecting = {
        {
            ["color"] = "b32929",
            ["title"] = "SPILLER TILSLUTTER! :red_circle: ",
            ["description"] = "Bruger navn : *"..playerName.."*\n\nBrugerens IP : *"..playerIp.."*\n\nSteam HEX-ID : *"..playerHex.."*\n Ping/Netværk : *"..playerPing.."*",
            ["footer"] = "Remake af SebbeDeppe, SebastiaN#0001", {
                ["text"] = name,
                ["icon_url"] = logo,
            },
        }
    }

-- Ik ændre noget her.
PerformHttpRequest(webhook, function (err, text, headers) end, 'POST', json.encode({username = name, embeds = disconnecting}), { ['Content-Type'] = 'application/json' })
end)