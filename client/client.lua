RegisterCommand("announce", function(source, args, message)
  TriggerServerEvent("SimpleAnnounce", table.concat(args, " "))
  local name = GetPlayerName(PlayerId())
end)

RegisterNetEvent('SimpleAnnounce:Sound')
AddEventHandler('SimpleAnnounce:Sound', function()
  PlaySoundFrontend(-1, "DELETE","HUD_DEATHMATCH_SOUNDSET", 1)
end)

RegisterNetEvent("LackPerms")
AddEventHandler("LackPerms", function()
  TriggerEvent("chatMessage", "[Error]", {255,0,0}, "Sorry, but you don't have permission to do this" )
end)

Citizen.CreateThread(function()

  TriggerEvent('chat:addSuggestion', '/announce', 'Sends an announcement to all players in chat', {
    { name = 'Make an announcement', help = 'Type your announcement!'}
  })

end)