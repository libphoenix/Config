local status, Fterm = pcall(require, "FTerm")
if not status then
	return
end

Fterm.setup({
	border = "single",
	dimensions = {
		height = 0.9,
		width = 0.9,
	},
})

-- terminal commands
vim.api.nvim_create_user_command("FTermOpen", require("FTerm").open, { bang = true })
vim.api.nvim_create_user_command("FTermClose", require("FTerm").close, { bang = true })
vim.api.nvim_create_user_command("FTermExit", require("FTerm").exit, { bang = true })
vim.api.nvim_create_user_command("FTermToggle", require("FTerm").toggle, { bang = true })
