local options = { theme = "material-nvim" }

--sections = {lualine_d = {"os.data('%a')", 'data', require'lsp-status'.status}}

require('lualine').setup{
	options = options,
	--sections = sections,
}
