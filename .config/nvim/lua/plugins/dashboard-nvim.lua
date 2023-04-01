local status, dashboard = pcall(require, "dashboard")
if not status then
	return
end

dashboard.setup({
	theme = "hyper",
	hide = {
		statusline = true,
		tabline = true,
		winbar = true,
	},
})
