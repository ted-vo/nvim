local status_ok, go_nvim = pcall(require, "go")
if not status_ok then
	return
end

go_nvim.setup()
