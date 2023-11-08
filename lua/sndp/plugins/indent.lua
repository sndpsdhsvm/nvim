return {
  'lukas-reineke/indent-blankline.nvim',
  -- lazy = true,
  -- event = { "BufReadPre", "BufNewFile" },
  config = function()
    local ibl = require("ibl")

    ibl.setup(
      {
        indent = { char = "┃" },
        scope = { exclude = { language = { "lua" } } },
      }
    )
  end
}
