local g = vim.g

-- width of explorer 
g.nvim_tree_width = 25

g.nvim_tree_icons = {
	default=        '',
	symlink=        '',
	git= {
		unstaged=     "✗",
  		staged=       "✓",
  		unmerged=     "",
  		renamed=      "➜",
  		untracked=    "★",
  		deleted=      "",
 	},
	folder= {
		arrow_open=   "",
	 	arrow_closed= "",
	 	default=      "",
	 	open=         "",
	 	empty=        "",
	 	empty_open=   "",
	 	symlink=      "",
	 	symlink_open= "",
	 },
}

-- whether to follow file on buffer
g.nvim_tree_follow = 1

g.nvim_tree_highlight_opened_files = 1

