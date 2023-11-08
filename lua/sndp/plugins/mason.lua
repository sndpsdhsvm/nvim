return {
    'williamboman/mason.nvim',
    -- lazy = true,
    -- event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
    config = function()
        local mason = require("mason")
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })
    end
}
