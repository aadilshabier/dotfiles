local M = {}

M.configure = function ()

local options = { theme = "material-nvim" }
require('lualine').setup{
	options = options,
}

end

return M
