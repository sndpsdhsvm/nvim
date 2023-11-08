return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    -- lazy = true,
    -- event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
    config = function()
        local telescope = require("telescope")
        telescope.setup()
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<c-p>', builtin.find_files, {})
        vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
        vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
    end
}
