--Just for now

--#region CURVES

hl.curve("easy", {
    type = "spring",
    mass = 1,
    stiffness = 500,
    dampening = 50,
})

hl.curve("harsh", {
    type = "spring",
    mass = 1,
    stiffness = 1100.0,
    dampening = 60.0,
})

hl.curve("smooth", {
    type = "spring",
    mass = 1,
    stiffness = 1600,
    dampening = 70,
})

--#endregion

hl.animation({
    leaf = "global",
    enabled = true,
    speed = 10,
    spring = "easy",
})

hl.animation({
    leaf = "border",
    enabled = true,
    speed = 5.39,
    spring = "easy",
})

--#region WINDOWS

hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 4.79,
    spring = "easy",
    style = "gnomed",
})

hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 1,
    spring = "smooth",
    style = "gnomed"
})

hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 1.49,
    spring = "smooth",
    style = "gnomed"
})

hl.animation({
    leaf = "windowsMove",
    enabled = true,
    speed = 1.49,
    spring = "easy",
    style = "gnomed",
})

--#endregion

--#region LAYERS

hl.animation({
    leaf = "layers",
    enabled = true,
    speed = 3.81,
    spring = "smooth",
    style = "slide",
})

hl.animation({
    leaf = "layersIn",
    enabled = true,
    speed = 10,
    spring = "smooth",
    style = "popin",
})

hl.animation({
    leaf = "layersOut",
    enabled = true,
    speed = 1.5,
    spring = "smooth",
    style = "slide",
})

--#endregion

-- # FADE # --

hl.animation({
    leaf = "fadeIn",
    enabled = true,
    speed = 1.73,
    spring = "easy",
})

hl.animation({
    leaf = "fadeOut",
    enabled = true,
    speed = 1.46,
    spring = "easy",
})

hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 3.03,
    spring = "easy",
})


hl.animation({
    leaf = "fadeLayersIn",
    enabled = true,
    speed = 1.79,
    spring = "easy",
})

hl.animation({
    leaf = "fadeLayersOut",
    enabled = true,
    speed = 1.39,
    spring = "easy",
})

hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 1.94,
    spring = "easy",
    style = "fade"
})

hl.animation({
    leaf = "workspacesIn",
    enabled = true,
    speed = 1.5,
    spring = "harsh",
    style = "slidefadevert bottom 2%"
})

hl.animation({
    leaf = "workspacesOut",
    enabled = true,
    speed = 5,
    spring = "harsh",
    style = "slidefadevert top 2%"
})

hl.animation({
    leaf = "zoomFactor",
    enabled = true,
    speed = 7,
    spring = "easy",
})
