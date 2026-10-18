local theme = require("/target/init")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.on("hyprland.start", function ()
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("wayscriber --daemon")
    hl.exec_cmd("qs -p $(realpath ~/.config/hypr/target/shell.qml)")
    hl.exec_cmd("kded6")
    hl.exec_cmd("easyeffects -w")

    local loadTheme = require("./src/utility/loadtheme")
    if loadTheme then
        loadTheme()
    end

end)

hl.on("config.reloaded", function ()

    local loadTheme = require("./src/utility/loadtheme")
    if loadTheme then
        loadTheme(theme)
    end

    hl.exec_cmd("killall -w -I qs & qs -p $(realpath ~/.config/hypr/target/shell.qml)")

end)
