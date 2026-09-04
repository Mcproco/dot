local config = {

    general = {

        border_size = 4,
        gaps_in = 25,
        gaps_out = 25,
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
            size = 8,
            passes = 1,
            ignore_opacity = true,
            xray = false,
            noise = 0.0117,
            contrast = 0.8916,
            brightness = 0.8172,
            vibrancy = 0.1696,
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
    },

    --[[
    plugin = {

        hyprbars = {

            enabled = true,
            bar_color = "#aaaaaaff",
            bar_height = 30,
            bar_blur = true,
            bar_title_enabled = true,
            bar_text_size = 15,
            bar_text_font = "Jetbrains",
            bar_text_align = "left",
            bar_buttons_alignment = "right",
            bar_part_of_window = true,
            bar_precedence_over_border = true,
            bar_padding = 7,
            bar_button_padding = 5,
            icon_on_hover = true,

            col = {
                text = "#000000ff";
            }
        }
    }
    ]]--

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
    }
}

local layer_rules = {

}

return {config, curves, animations, window_rules, layer_rules}
