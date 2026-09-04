local function loadtheme(theme)

    if theme == nil then
        return
    end

    local config, curves, animations, window_rules, layer_rules, load = table.unpack(theme)

    hl.config(config)

    for _, i in pairs(curves) do
        hl.curve(table.unpack(i))
    end

    for _, i in pairs(animations) do
        hl.animation(i)
    end

    for _, i in pairs(window_rules) do
        hl.window_rule(i)
    end

    if type(load) == "function" then
        load()
    end

end

return loadtheme
