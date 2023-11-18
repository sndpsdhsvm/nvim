local load = function(mod)
  package.loaded[mod] = nil
  require(mod)
end

load("config.autocmds")
load("config.keymaps")
load("config.options")
require("config.lazy")
