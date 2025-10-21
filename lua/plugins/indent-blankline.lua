local Plugin = { "lukas-reineke/indent-blankline.nvim" }

Plugin.name = "indent_blankline"

Plugin.main = "ibl"

Plugin.event = { "BufReadPost", "BufNewFile" }

-- See :help mason-settings
Plugin.opts = {
  indent = { char = "│" },
  scope = { exclude = { language = { "lua" } } },
}

return Plugin
