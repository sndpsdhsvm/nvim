return {
    'navarasu/onedark.nvim',
    config = function()
        local onedark = require("onedark")
        onedark.setup {
            style = 'darker',
            transparent = true
        }
        require('onedark').load()
    end
}
