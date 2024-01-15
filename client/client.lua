RegisterCommand("announce", function(source, args)
  TriggerServerEvent("SimpleAnnounce", table.concat(args, " "))
  local name = GetPlayerName(PlayerId())
end)

RegisterNetEvent("LackPerms")
AddEventHandler("LackPerms", function()
  TriggerEvent("chatMessage", "[Error]", {255,0,0}, "Sorry, but you don't have permission to do this" )
end)

Citizen.CreateThread(function()

  TriggerEvent('chat:addSuggestion', '/announce', 'Sends an announcement to all players in chat', {})

end)