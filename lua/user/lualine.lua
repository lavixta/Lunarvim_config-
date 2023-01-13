local components = require("lvim.core.lualine.components")
local status_ok, navic = pcall(require, "nvim-navic")
if not status_ok then
	return
end
lvim.builtin.lualine.sections.lualine_c = { { navic.get_location, cond = navic.is_available } }
