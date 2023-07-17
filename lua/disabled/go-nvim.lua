local status_ok, go_nvim = pcall(require, "go")
if not status_ok then
  return
end

local config = {
  run_in_floaterm = true,
}

go_nvim.setup(config)
