local M = {
	"akinsho/bufferline.nvim",
	version = "*",
	event = { "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
	dependencies = {
		{
			"famiu/bufdelete.nvim",
			commit = "8933abc09df6c381d47dc271b1ee5d266541448e",
		},
		{
			"nvim-tree/nvim-web-devicons",
		},
	},
}

function M.config()
	vim.opt.termguicolors = true
	require("bufferline").setup({
		options = {
			close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
			right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
			offsets = {
				{
					filetype = "NvimTree",
					padding = 1,
					-- text = function()
					-- 	return vim.fn.getcwd()
					-- end,
					text = "File Explore",
					highlight = "Directory",
					text_align = "center",
					separator = true,
				},
			},
			separator_style = "slant", -- | "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
		},
	})

	-- Shorten function name
	local keymap = vim.keymap.set
	-- Silent keymap option
	local opts = { silent = true, noremap = true }
	keymap("n", "<leader>1", "<CMD>BufferLineGoToBuffer 1<CR>", opts)
	keymap("n", "<leader>2", "<CMD>BufferLineGoToBuffer 2<CR>", opts)
	keymap("n", "<leader>3", "<CMD>BufferLineGoToBuffer 3<CR>", opts)
	keymap("n", "<leader>4", "<CMD>BufferLineGoToBuffer 4<CR>", opts)
	keymap("n", "<leader>5", "<CMD>BufferLineGoToBuffer 5<CR>", opts)
	keymap("n", "<leader>7", "<CMD>BufferLineGoToBuffer 7<CR>", opts)
	keymap("n", "<leader>6", "<CMD>BufferLineGoToBuffer 6<CR>", opts)
	keymap("n", "<leader>8", "<CMD>BufferLineGoToBuffer 8<CR>", opts)
	keymap("n", "<leader>9", "<CMD>BufferLineGoToBuffer 9<CR>", opts)

	keymap("n", "gb", "<CMD>BufferLinePick<CR>", opts)
	keymap("n", "gD", "<CMD>BufferLinePickClose<CR>", opts)
end

return M
