local palette = require("darcula.palette").default

return {
    setup = function ()

        local scheme = require("highlights.built-in-highlights").apply(palette, {})
        scheme = require("highlights.plugins").apply(palette, scheme)
        scheme = require("highlights.treesitter").apply(palette, scheme)
        scheme = require("highlights.lsp").apply(palette, scheme)

        if vim.g.colors_name then vim.cmd.hi("clear") end

        -- load terminal highlights
        require("highlights.terminal").apply(palette)

        vim.opt.background = "dark"
        vim.o.termguicolors = true
        vim.g.colors_name = "darcula"

        for group, settings in pairs(scheme) do
            vim.api.nvim_set_hl(0, group, settings)
        end
    end
}
