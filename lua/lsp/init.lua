local M = {}

M.servers = {
	-- "lua_ls",
	-- "cssls",
	-- "html",
	-- "tsserver",
	-- "pyright",
	-- "bashls",
	-- "jsonls",
	-- "yamlls",

	"awk_ls", --- AWK
	"ansiblels", --- Ansible
	"bashls", --- Bash
	"cmake", --- CMake
	"dockerls", --- Docker
	"dotls", --- Dot files
	"eslint", --- ESlint
	"golangci_lint_ls", --- Go
	"gopls", --- Go
	"grammarly", --- Grammarly
	"html", --- HTML
	--	"helmls", --- Helm
	"jsonls", --- JSON
	"jdtls", --- Java
	"tsserver", --- JavaScript, TypeScript
	"kotlin_language_server", --- Kotlin
	"lua_ls", --- Lua
	"marksman", --- Markdown
	"pyright", --- Python
	-- "ruby_ls", --- Ruby
	"sqlls", --- SQL
	"taplo", --- TOML
	"terraformls", --- Terraform
	"vuels", --- Vue
	"yamlls", --- YAML
}

return M
