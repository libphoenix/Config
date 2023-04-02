local status, dashboard = pcall(require, "alpha")
if not status then
	return
end

local theme_status, theme = pcall(require, "alpha.themes.startify")
if not theme_status then
	return
end

dashboard.setup(theme.config)
