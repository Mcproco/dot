--TODO: Keybind to change workspace widget? 

local scriptPath = "~/.config/hypr/bash/"
local mainMod = "SUPER"
local focus_mode = false

hl.config({

    input = {
        repeat_rate = 40,
        repeat_delay = 350,
    }

})

hl.bind(
    mainMod .. " + TAB",
        hl.dsp.exec_cmd("rofi -show drun")
)

hl.bind(
    mainMod .. " + BACKSPACE",
        hl.dsp.exec_cmd("sh " .. scriptPath .. "/forcequit.sh")
)

hl.bind(
    "PRINT",
        hl.dsp.exec_cmd("sh " .. scriptPath .. "/mscreenshot.sh")
)

hl.bind(
    mainMod .. " + I",
        hl.dsp.exec_cmd("sh " .. scriptPath .. "wswitch.sh")
)

hl.bind(
    mainMod .. " + O",
        hl.dsp.exec_cmd("sh " .. scriptPath .. "tswitch.sh")
)

hl.bind(
    mainMod .. " + E",
        hl.dsp.exec_cmd("dolphin")
)

hl.bind(
    mainMod .. " + P",
        hl.dsp.window.pin()
)

hl.bind(
    mainMod .. " + M",
        hl.dsp.exec_cmd("sh " .. scriptPath .. "power.sh")
)

hl.bind(
    mainMod .. " + F",
        hl.dsp.window.fullscreen()
)

hl.bind(
    mainMod .. " + X",
        function ()
            focus_mode = not focus_mode

            if focus_mode then
                hl.config({
                    general = {
                        border_size = 0,
                        gaps_in = 0,
                        gaps_out = 0,
                        float_gaps = 0,
                        gaps_workspaces = 0,
                    },
                    decoration = { shadow = { enabled = false } },
                    animations = { enabled = false }
                })
            else
                hl.exec_cmd("hyprctl reload")
            end

        end
)

hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = 0,

        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})

hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("wayscriber --daemon-toggle"))
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))    -- dwindle only
hl.bind(mainMod .. " + U", hl.dsp.exec_cmd("zsh ~/Menus/main.zsh"))
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })

for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

--Some important laptop stuff apparently
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
