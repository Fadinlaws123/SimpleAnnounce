RegisterServerEvent('SimpleAnnounce')
AddEventHandler('SimpleAnnounce', function(message)
  if Config.Announce.Settings.UsePermissions == true then
    if IsPlayerAceAllowed(source, Config.Announce.Settings.AcePerm) then
      if Config.Announce.Settings.Style == '1' then
        if message == "" then 
          TriggerClientEvent("chat:addMessage", source, {
            color = {255, 0, 0},
            multiline = true,
            args = {"~w~[~r~SimpleAnnounce~w~] ", "~r~ERROR: ~w~You need to add a message to your announcement!"}
          })
        else
          TriggerClientEvent("chat:addMessage", -1, {
            color = {255, 0, 0},
            multiline = true,
            args = {"~w~[~r~SimpleAnnounce~w~] ", message}
          })
          TriggerClientEvent('SimpleAnnounce:Sound', -1)
          if Config.Announce.LogSettings.EnableDiscordLogs then
            sendDiscord('SimpleAnnouncement \n', message)
          end
        end
      elseif Config.Announce.Settings.Style == '2' then
        if message == "" then 
          TriggerClientEvent("chat:addMessage", source, {
            color = {255, 0, 0},
            multiline = true,
            args = {"~w~[~r~SimpleAnnounce~w~] ", "~r~ERROR: ~w~You need to add a message to your announcement!"}
          })
        else
          TriggerClientEvent("chat:addMessage", -1, {
            color = {255, 0, 0},
            multiline = true,
            args = {"^1------ ⚠️ STAFF ANNOUNCEMENT ⚠️ ------"}
          })
          TriggerClientEvent("chat:addMessage", -1, {
            color = {255, 0, 0},
            multiline = true,
            args = {"^1 🧍Announcement By: ^0" .. GetPlayerName(source)}
          })
          TriggerClientEvent("chat:addMessage", -1, {
            color = {255, 0, 0},
            multiline = true,
            args = {"^1 📢Announcement: ^0" .. message}
          })
          TriggerClientEvent("chat:addMessage", -1, {
            color = {255, 0, 0},
            multiline = true,
            args = {"^1--------------------------------------------------------"}
          })
          TriggerClientEvent('SimpleAnnounce:Sound', -1)
          if Config.Announce.LogSettings.EnableDiscordLogs then
            sendDiscord('SimpleAnnouncement \n', message)
          end
        end
      end
    else
      TriggerClientEvent('LackPerms', source)
    end
  else
    if Config.Announce.Settings.Style == '1' then
      if message == "" then 
        TriggerClientEvent("chat:addMessage", source, {
          color = {255, 0, 0},
          multiline = true,
          args = {"~w~[~r~SimpleAnnounce~w~] ", "~r~ERROR: ~w~You need to add a message to your announcement!"}
        })
      else
        TriggerClientEvent("chat:addMessage", -1, {
          color = {255, 0, 0},
          multiline = true,
          args = {"~w~[~r~SimpleAnnounce~w~] ", message}
        })
        TriggerClientEvent('SimpleAnnounce:Sound', -1)
        if Config.Announce.LogSettings.EnableDiscordLogs then
          sendDiscord('SimpleAnnouncement \n', message)
        end
      end
    elseif Config.Announce.Settings.Style == '2' then
      if message == "" then 
        TriggerClientEvent("chat:addMessage", source, {
          color = {255, 0, 0},
          multiline = true,
          args = {"~w~[~r~SimpleAnnounce~w~] ", "~r~ERROR: ~w~You need to add a message to your announcement!"}
        })
      else
        TriggerClientEvent("chat:addMessage", -1, {
          color = {255, 0, 0},
          multiline = true,
          args = {"^1------ ⚠️ STAFF ANNOUNCEMENT ⚠️ ------"}
        })
        TriggerClientEvent("chat:addMessage", -1, {
          color = {255, 0, 0},
          multiline = true,
          args = {"^1 🧍Announcement By: ^0" .. GetPlayerName(source)}
        })
        TriggerClientEvent("chat:addMessage", -1, {
          color = {255, 0, 0},
          multiline = true,
          args = {"^1 📢Announcement: ^0" .. message}
        })
        TriggerClientEvent("chat:addMessage", -1, {
          color = {255, 0, 0},
          multiline = true,
          args = {"^1--------------------------------------------------------"}
        })
        TriggerClientEvent('SimpleAnnounce:Sound', -1)
        if Config.Announce.LogSettings.EnableDiscordLogs then
          sendDiscord('SimpleAnnouncement \n', message)
        end
      end
    end
  end
end)

function sendDiscord(name, message)
  timestamp = os.date("%c")
	local content = {
        {
        	["color"] =  Config.Announce.EmbedConfig.EmbedColor,
          ["title"] = "**Server Announcement by: __" .. GetPlayerName(source) .. "__**",
          fields = {
            { name = "**→ Announcement:**", value = "*" .. message .. "*"},
            { name = "**→ Command Used:** __/announce__", value = ""},
            { name = "**→ Permission Required:** __" .. Config.Announce.Settings.AcePerm .. '__', value = ""},
            { name = "**→ Command used on:** __" .. timestamp .. '__', value = ""}
          },
          ["footer"] = {
            ["text"] = 'Made by SimpleDevelopments'
          }
        }
    }
  	PerformHttpRequest(Config.Announce.LogSettings.loggingWebhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = content, avatar_url = Config.Announce.EmbedConfig.WebhookPicture}), { ['Content-Type'] = 'application/json' })
end
