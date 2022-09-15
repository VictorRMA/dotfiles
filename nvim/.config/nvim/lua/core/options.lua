-----------------------------------------------------------
-- General Neovim settings and configuration
-----------------------------------------------------------

local g = vim.g       -- Global variables
local opt = vim.opt   -- Set options (global/buffer/windows-scoped)

-- General
opt.mouse = 'a'			          -- enable mouse for scrolling and resizing
opt.clipboard = 'unnamedplus'	-- Copy/paste to system clipboard
opt.swapfile = false		      -- Don't use swapfile
opt.history = 500		          -- set bigger history of executed commands
opt.hidden = true		          -- manage background buffers

-- UI
opt.number = true		      -- show line numbers
opt.relativenumber = true	-- show relative line numbers
opt.ruler = true		      -- show the current row and column
opt.colorcolumn = '80'		-- visual column
opt.termguicolors = true	-- Enable 24-bit RGB colors
opt.mat = 1			          -- second to blink when matching brackets
opt.scrolloff = 3		      -- keep 3 lines when scrolling
opt.sidescrolloff = 5		  -- keep 5 columns to the left and right

-- tabs, indent
opt.expandtab = true		-- Convert tabs to spaces
opt.shiftwidth = 2		  -- Shift 2 spaces when tab
opt.tabstop = 2			    -- 1 tab == 2 spaces
opt.smartindent = true  -- Autoindent new lines

-- search
opt.ignorecase = true		-- ignore case when searching
opt.smartcase = true		-- no ignorecase if Uppercase char present

vim.cmd[[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=150})
  augroup END
]]
