-----------------------------------------------------------
-- General Neovim settings and configuration
-----------------------------------------------------------

local g = vim.g       -- Global variables
local opt = vim.opt   -- Set options (global/buffer/windows-scoped)

-- General
opt.clipboard = 'unnamedplus'	-- Copy/paste to system clipboard
opt.swapfile = false		      -- Don't use swapfile
opt.hidden = true		          -- manage background buffers

-- UI
opt.number = true		      -- show line numbers
opt.relativenumber = true	-- show relative line numbers
opt.ruler = true		      -- show the current row and column
opt.colorcolumn = '120'		-- visual column
opt.termguicolors = true	-- Enable 24-bit RGB colors
opt.mat = 1			          -- second to blink when matching brackets
opt.scrolloff = 3		      -- keep 3 lines when scrolling
opt.sidescrolloff = 5		  -- keep 5 columns to the left and right
opt.background = "dark"   -- colorschemes that can be light or dark will be made dark

-- tabs, indent
opt.expandtab = true		-- Convert tabs to spaces
opt.shiftwidth = 2		  -- Shift 2 spaces when tab
opt.tabstop = 2			    -- 1 tab == 2 spaces
opt.autoindent = true   -- Autoindent new lines
opt.wrap = false        -- prevent wrap lines

-- search
opt.ignorecase = true		-- ignore case when searching
opt.smartcase = true		-- no ignorecase if Uppercase char present

vim.cmd[[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=150})
  augroup END
]]

g.netrw_preview   = 1
g.netrw_liststyle = 3
g.netrw_winsize   = 30
