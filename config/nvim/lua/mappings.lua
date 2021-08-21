-- HELPER FUNCTIONS
local function noremap(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local map  = vim.api.nvim_set_keymap

-- MAPPINGS

-- remap leader
map("n", "<Space>", "", {})
vim.g.mapleader = " "

-- remove highlight when <esc> is presses
noremap("n", "<esc>", ":noh<cr>", { silent = true })

-- nvim-tree.lua bindings
noremap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { silent = true })
noremap("n", "<leader>r", "<cmd>NvimTreeRefresh<cr>", { silent = true })

-- material bindings
noremap("n", "<leader>mm", 
	[[<cmd>lua require("material.functions").toggle_style()<cr>]], { silent = true })

-- neogit
noremap("n", "<leader>g", "<cmd>Neogit<cr>", { silent = true })

-- telescope
noremap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { silent = true })
noremap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { silent = true })
noremap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { silent = true })
noremap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { silent = true })

-- lsp (from plugins/lsp.lua)
 	-- local opts = { noremap=true, silent=true }

 	-- buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
 	-- buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
 	-- buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
 	-- buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
 	-- buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
 	-- buf_set_keymap('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
 	-- buf_set_keymap('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
 	-- buf_set_keymap('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
 	-- buf_set_keymap('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
 	-- buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
 	-- buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
 	-- buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
 	-- buf_set_keymap('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
 	-- buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
 	-- buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
 	-- buf_set_keymap('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
 	-- buf_set_keymap('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

-- compe
noremap("i", "<C-Space>", "compe#complete()", { silent = true, expr = true })
noremap("i", "<cr>", "compe#confirm('<cr>')", { silent = true, expr = true })
noremap("i", "<C-e>", "compe#close('<C-e>')", { silent = true, expr = true })
noremap("i", "<C-f>", "compe#scroll({ 'delta': +4 })", { silent = true, expr = true })
noremap("i", "<C-d>", "compe#scroll({ 'delta': -4 })", { silent = true, expr = true })

local t = function(str)
	return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
	if vim.fn.pumvisible() == 1 then
		return t "<C-n>"
	elseif check_back_space() then
		return t "<Tab>"
	else
    	return vim.fn['compe#complete']()
  	end
end

_G.s_tab_complete = function()
  	if vim.fn.pumvisible() == 1 then
    	return t "<C-p>"
  	else
    	-- If <S-Tab> is not working in your terminal, change it to <C-h>
    	return t "<S-Tab>"
  	end
end

map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

