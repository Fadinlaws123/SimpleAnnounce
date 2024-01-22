Config = {}

Config.Announce = {

	Settings = {
		Style = "2", -- Change the style of how you want to have /announce messages to appear! (Available options: 1 | 2)
		UsePermissions = false, -- Enable / Disable the need for permissions.
		AcePerm = "simple.announce", -- Permission name for using /announce
	},

	LogSettings = {
		EnableDiscordLogs = true, -- Enable / Disable the usage of logging via discord.
		loggingWebhook = "CHANGE ME", -- Webhook that logs will be sent to. (EnableDiscordLogs must be enabled!)
	},

	EmbedConfig = {
		EmbedColor = "5263615", -- Color of the embed, can be Hex or decimal code.
		WebhookPicture = "CHANGE ME" -- Picture that shows for the webhook logs.
		-- More settings coming soon --
	}
}
