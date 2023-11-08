vim.opt.runtimepath:append("/home/sndp/.config/.nvim-treesitter/parsers")

return {
    'nvim-treesitter/nvim-treesitter',
    -- lazy = true,
    -- event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
    config = function()
        local treesitter = require("nvim-treesitter")
        treesitter.setup {
            parser_install_dir = "/home/sndp/.config/.nvim-treesitter/parsers",
            -- A list of parser names, or "all"
            ensure_installed = { "html", "javascript", "scss", "typescript", "bash" },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
            },
            autotag = {
                enable = true,
            },
        }
    end
}
