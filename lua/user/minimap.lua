local M = {
	"wfxr/minimap.vim",
	run = "cargo install --locked code-minimap",
	event = { "VimEnter", "InsertEnter", "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
}

function M.config()
	require("minimap")

	local set = vim.g

	set.minimap_width = 20
	set.minimap_git_colors = 1
	-- set.minimap_auto_start = 1
	set.minimap_auto_start_win_enter = 1
end

return M
