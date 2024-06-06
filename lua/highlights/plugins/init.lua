local M = {}

function M.apply(palette, scheme)
  local plugin_modules = {
    "git-signs",
  }

  local sch = require("helpers.helpers").cloneTable(scheme)
  for _, module in ipairs(plugin_modules) do
    sch = require("highlights.plugins." .. module).apply(palette, sch)
  end

  return sch
end

return M
