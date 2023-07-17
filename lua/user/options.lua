-----------------------------------------------------------
-- General Neovim settings and configuration
-----------------------------------------------------------

-- Default options are not included
-- See: https://neovim.io/doc/user/vim_diff.html [2] Defaults - *nvim-defaults*
local set = vim.opt -- Set options (global/buffer/windows-scoped)

-----------------------------------------------------------
-- General
-----------------------------------------------------------
set.mouse = "a"                               -- Enable mouse support
set.clipboard = "unnamedplus"                 -- Copy/paste to system clipboard
set.swapfile = false                          -- Don't use swapfile
set.completeopt = "menuone,noinsert,noselect" -- Autocomplete setions
set.timeoutlen = 500

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
set.number = true             -- Show line number
set.relativenumber = true     -- Set relative line number
set.showmatch = true          -- Highlight matching parenthesis
set.foldmethod = "indent"     -- Enable folding (default 'foldmarker')
set.colorcolumn = "200"       -- Line lenght marker at 80 columns
set.splitright = true         -- Vertical split to the right
set.splitbelow = true         -- Horizontal split to the bottom
set.ignorecase = true         -- Ignore case letters when search
set.smartcase = true          -- Ignore lowercase for the whole pattern
set.linebreak = true          -- Wrap on word boundary
set.laststatus = 3            -- Set global statusline
set.termguicolors = true      -- Set term gui colors (most terminals support this)
set.cursorline = true         -- Uighlight the current line
set.wrap = false              -- Display lines as one long line
set.scrolloff = 8             -- Is one of my fav set.sidescrolloff = 8
set.signcolumn = "yes"        -- Always show the sign column, otherwise it would shift the text each time
set.guifont = "monospace:h17" -- The font used in graphical neovim applications
set.numberwidth = 2           -- Set number column width to 2 {default 4}

set.backup = false            -- creates a backup file
set.cmdheight = 1             -- more space in the neovim command line for displaying messages
set.conceallevel = 0          -- so that `` is visible in markdown files
set.fileencoding = "utf-8"    -- the encoding written to a file
set.hlsearch = true           -- highlight all matches on previous search pattern
set.ignorecase = true         -- ignore case in search patterns
set.pumheight = 10            -- pop up menu height
set.showmode = false          -- we don't need to see things like -- INSERT -- anymore
set.showtabline = 0           -- always show tabs
set.timeoutlen = 1000         -- time to wait for a mapped sequence to complete (in milliseconds)
set.undofile = true           -- enable persistent undo
set.updatetime = 300          -- faster completion (4000ms default)
set.writebackup = false       -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
set.expandtab = true          -- convert tabs to spaces
set.showcmd = false
set.ruler = false
set.fillchars.eob = " "
set.shortmess:append("c")
set.whichwrap:append("<,>,[,],h,l")
set.iskeyword:append("-")

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
set.expandtab = true   -- Use spaces instead of tabs
set.shiftwidth = 2     -- Shift 2 spaces when tab
set.tabstop = 2        -- 1 tab == 2 spaces
set.smartindent = true -- Autoindent new lines

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
set.hidden = true     -- Enable background buffers
set.history = 100     -- Remember N lines in history
set.lazyredraw = true -- Faster scrolling
set.synmaxcol = 240   -- Max column for syntax highlight
set.updatetime = 700  -- ms to wait for trigger an event
