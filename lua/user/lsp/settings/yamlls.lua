local default_schemas = nil
local status_ok, yamlls_settings = pcall(require, "nlspsettings.yamlls")

if status_ok then
  default_schemas = yamlls_settings.get_default_schemas()
end

local schemas = {
  ["https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json"] = "/.gitlab/*",
  ["../path/relative/to/file.yml"] = "/.github/*",
  ["/path/from/root/of/project"] = "/.github/*",
}

local function extend(tab1, tab2)
  for _, value in ipairs(tab2 or {}) do
    table.insert(tab1, value)
  end
  return tab1
end

local extended_schemas = extend(schemas, default_schemas)

local opts = {
  settings = {
    yaml = {
      schemas = extended_schemas,
    },
  },
}

return opts
