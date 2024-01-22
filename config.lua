Config = {}

Config.Announce = {

	Settings = {
		Style = "2", -- Change the style of how you want to have /announce messages to appear! (Available options: 1 | 2)
		UsePermissions = false, -- Enable / Disable the need for permissions.
		AcePerm = "simple.announce", -- Permission name for using /announce
	},

	LogSettings = {
		EnableDiscordLogs = true, -- Enable / Disable the usage of logging via discord.
		loggingWebhook = "https://discord.com/api/webhooks/1195891785449345075/qZi9KUDgmrRPqB4yy5x795IPvLnEhQQGmoW3BxdOBvEIt46fj8wCXkeWyEMzNG-ISznJ", -- Webhook that logs will be sent to. (EnableDiscordLogs must be enabled!)
	},

	EmbedConfig = {
		EmbedColor = "5263615", -- Color of the embed, can be Hex or decimal code.
		WebhookPicture = "https://i.seadn.io/gae/2hDpuTi-0AMKvoZJGd-yKWvK4tKdQr_kLIpB_qSeMau2TNGCNidAosMEvrEXFO9G6tmlFlPQplpwiqirgrIPWnCKMvElaYgI-HiVvXc?auto=format&dpr=1&w=1000" -- Picture that shows for the webhook logs.
		-- More settings coming soon --
	}
}