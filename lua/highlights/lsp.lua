local helpers = require("helpers.helpers")

local M = {}

-- @param palette any
-- @param scheme any
function M.apply(palette, scheme)
  local M_scheme = {

    --["@lsp.mod.library.rust"] = { fg = palette.colors.purple },

    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.class"] = { fg = palette.colors.purple },

    ["@lsp.typemod.interface.library"] = { link = "@lsp.typemod.struct.library" },
    ["@lsp.typemod.method.consuming"] = { link = "Function" },
    ["@lsp.typemod.namespace.library"] = { italic = true },
    ["@lsp.typemod.struct.library"] = { fg = palette.colors.white },
  }
  return helpers.mergeTables(scheme, M_scheme)
end

return M
