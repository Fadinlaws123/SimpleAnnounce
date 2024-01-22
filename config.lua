Config = {}

Config.Announce = {

	Settings = {
		Style = "2", -- Change the style of how you want to have /announce messages to appear! (Available options: 1 | 2)
		UsePermissions = true, -- Enable / Disable the need for permissions.
		AcePerm = "simple.announce", -- Permission name for using /announce
	},

	LogSettings = {
		EnableDiscordLogs = true, -- Enable / Disable the usage of logging via discord.
		loggingWebhook = "CHANGE ME", -- Webhook that logs will be sent to. (EnableDiscordLogs must be enabled!)
	},

	EmbedConfig = {
		EmbedColor = "5263615", -- Color of the embed, can be Hex or decimal code.
		WebhookPicture = "https://png.pngtree.com/png-vector/20190411/ourmid/pngtree-vector-information-icon-png-image_925431.jpg" -- Picture that shows for the webhook logs.
		-- More settings coming soon --
	}
}
