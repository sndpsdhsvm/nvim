local Plugin = { "williamboman/mason.nvim" }

Plugin.lazy = false

-- See :help mason-settings
Plugin.opts = {
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
}

return Plugin


