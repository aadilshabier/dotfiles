-- Rewriting init.vim in lua--

-- TODO: Improve starup time

--- HELPERS ---

local opt = vim.opt -- to opt options
local cmd = vim.cmd -- to execute vim commands e.g cmd('pwd')
--local fn = vim.fn 	-- to call vim functions  e.g fn.bufnr()
--local g = vim.g 	-- table to access global elements

--- OPTIONS ---


opt.encoding = "utf-8"
opt.backup = false
opt.writebackup = false
opt.tabstop = 4
opt.shiftwidth = 4
opt.number = true
opt.relativenumber = true
opt.wrap = false
opt.mouse = "n"
opt.signcolumn = "number"
opt.termguicolors = true
opt.background = "dark"

-- for nvim-compe
opt.completeopt = "menuone,noselect"

-- highlight on yank
cmd[[au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=true}]]

require('plugins')
require('mappings')
--local u = require('utils')

