local wilder = require "wilder"

wilder.setup {
    modes = { ":", "/", "?" },
}

wilder.set_option(
    "renderer",
    wilder.popupmenu_renderer(wilder.popupmenu_border_theme {
        highlights = { border = "Normal" },
        border = "rounded",
    })
)

wilder.set_option("pipeline", {
    wilder.branch(wilder.cmdline_pipeline(), wilder.search_pipeline()),
})
