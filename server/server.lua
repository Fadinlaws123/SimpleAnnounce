RegisterServerEvent('SimpleAnnounce')
AddEventHandler('SimpleAnnounce', function(message)
  if Config.Main.permissionBased == true then
    if IsPlayerAceAllowed(source, 'simple.announce') then
      TriggerClientEvent("chat:addMessage", -1, {
        color = {255, 0, 0},
        multiline = true,
        args = {"~w~[~r~SimpleAnnounce~w~] ", message}
      })
    sendDiscord('SimpleAnnouncement Logger \n', '**Announcement By: ' .. GetPlayerName(source) .. ' \n** Announcement: ' .. message)
    else
      TriggerClientEvent('LackPerms', source)
    end
  else
    TriggerClientEvent("chat:addMessage", -1, {
      color = {255, 0, 0},
      multiline = true,
      args = {"~w~[~r~SimpleAnnounce~w~] ", message}
    })
  sendDiscord('SimpleAnnouncement Logger \n', '**Announcement By: ' .. GetPlayerName(source) .. ' \n** Announcement: ' .. message)
  end
end)

function sendDiscord(name, message)
	local content = {
        {
        	["color"] =  "5263615",
          ["title"] = "**Server Announcement**",
          ["description"] = message,
          ["footer"] = {
            ["text"] = 'Made by SimpleDevelopments'
          }
        }
    }
  	PerformHttpRequest(Config.Main.loggingWebhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = content}), { ['Content-Type'] = 'application/json' })
end