local config = {

    general = {

        border_size = 0,
        gaps_in = 5,
        gaps_out = 10,
        float_gaps = 0,
        gaps_workspaces = 0,
        layout = "dwindle",
        no_focus_fallback = false,
        resize_on_border = true,
        extend_border_grab_area = 5,
        hover_icon_on_border = true,
        allow_tearing = false,


        col = {
            inactive_border = 0xffffffff,
            active_border = 0xffffffff,
            nogroup_border = 0xffffaaff,
            nogroup_border_active = 0xffff00ff,
        },

        snap = {

            enabled = true,
            window_gap = 10,
            monitor_gap = 10,
            border_overlap = false,
            respect_gaps = false,

        },
    },

    decoration = {

        rounding = 0,
        rounding_power = 0,
        active_opacity = 1.0,
        inactive_opacity = 1.0,
        fullscreen_opacity = 1.0,
        dim_modal = true,
        dim_inactive = false,
        dim_strength = 0.5,
        dim_special = 0.2,
        dim_around = 0.4,
        screen_shader = "",
        border_part_of_window = true,

        blur = {

            enabled = true,
            size = 4,--3,
            passes = 2,
            ignore_opacity = true,
            xray = false,
            noise = 0.0117,
            contrast = 1.0,
            brightness = 0.9172,
            vibrancy = 0.3696,
            vibrancy_darkness = 0.0,
            special = false,
            popups = false,
            popups_ignorealpha = 0.2,
            input_methods = false,
            input_methods_ignorealpha = 0.2,

        },

        shadow = {

            enabled = false,
            range = 1,
            sharp = true,
            color = "#000000cc",
            offset = { 20, 20 },
            scale = 1.0,

        },

        glow = {

        }

    },

    dwindle = {
        preserve_split = true,
    },

    animations = {
        enabled = true,
        workspace_wraparound = false,
    },

    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        middle_click_paste = false,
    },

}

local curves = {

}

local animations = {

}

local window_rules = {
    {
        match = {
            class = "kitty"
        },

        float = true,
        size = {600, 300}
    },
    {
        match = {
            pin = true
        },

        border_size = 3,
    }
}

local layer_rules = {

}

local load = function ()

    local function windowrules()

        hl.window_rule({
            name = "Kitty_Opaque",
            match = {
                class = "kitty"
            },
            opacity = 0.85,
        })

        hl.window_rule({
            name = "Obsidian_Opaque",
            match = {
                class = "md.obsidian.Obsidian"
            },
            opacity = 0.75,
        })

        hl.window_rule({
            name = "Vesktop_Opaque",
            match = {
                class = "vesktop"
            },
            opacity = 0.85,
        })

    end

    local function layerrules()

        hl.layer_rule({
            match = { namespace = "rofi" },
            blur = true,
        })

        hl.layer_rule({
            match = { namespace = "quickshell" },
            blur = true,
        })

    end

    windowrules()
    layerrules()

end

return {config, curves, animations, window_rules, layer_rules, load}
