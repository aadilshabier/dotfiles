local M = {}

M.configure = function ()

require('nvim-treesitter.configs').setup {
	ensure_installed = "maintained",
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}

end

return M
