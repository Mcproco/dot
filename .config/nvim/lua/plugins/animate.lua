return {
    'nvim-mini/mini.animate',
    version = false,
    config = function ()

        local animate = require('mini.animate')

        animate.setup({
            cursor = {
                enable = false
            },
            scroll = {
                enable = true,
                timing = animate.gen_timing.quadratic({duration = 10, easing = 'out'})
            }
        })
    end
}
