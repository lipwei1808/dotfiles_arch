local MAIN = "desc:GIGA-BYTE TECHNOLOGY CO. LTD. AORUS FO32U2 24290B006037"
local SIDE = "desc:LG Electronics LG FULL HD 0x01010101"

-- Autostart
hl.on("hyprland.start", function()
	hl.exec_cmd("waybar")
end)

-- config
hl.config({
	general = {
		layout = "dwindle",
		border_size = 1,
		gaps_in = 5,
		gaps_out = 10,
	},

	decoration = {
		rounding = 8,
	},
	dwindle = {
		preserve_split = true,
	},
})

hl.monitor({
	output = MAIN,
	mode = "3840x2160@240",
	position = "0x0",
	scale = 1.5,
})

hl.monitor({
	output = SIDE,
	mode = "1920x1080@60",
	position = "2560x0",
	scale = 1,
	transform = 3,
})

-- Window modes
hl.bind("SUPER + F", hl.dsp.window.fullscreen())
hl.bind("SUPER + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + M", hl.dsp.exit())

hl.workspace_rule({ workspace = "1", monitor = MAIN, default = true })
hl.workspace_rule({ workspace = "2", monitor = MAIN })
hl.workspace_rule({ workspace = "3", monitor = MAIN })
hl.workspace_rule({ workspace = "4", monitor = MAIN })
hl.workspace_rule({ workspace = "5", monitor = SIDE, default = true })
hl.workspace_rule({ workspace = "6", monitor = SIDE })
hl.workspace_rule({ workspace = "7", monitor = SIDE })
hl.workspace_rule({ workspace = "8", monitor = SIDE })

-- Switch workspace
hl.bind("SUPER + 1", hl.dsp.focus({ workspace = "1" }))
hl.bind("SUPER + 2", hl.dsp.focus({ workspace = "2" }))
hl.bind("SUPER + 3", hl.dsp.focus({ workspace = "3" }))
hl.bind("SUPER + 4", hl.dsp.focus({ workspace = "4" }))
hl.bind("SUPER + 5", hl.dsp.focus({ workspace = "5" }))
hl.bind("SUPER + 6", hl.dsp.focus({ workspace = "6" }))
hl.bind("SUPER + 7", hl.dsp.focus({ workspace = "7" }))
hl.bind("SUPER + 8", hl.dsp.focus({ workspace = "8" }))

-- Move active window to workspace
hl.bind("SUPER + SHIFT + 1", hl.dsp.window.move({ workspace = "1" }))
hl.bind("SUPER + SHIFT + 2", hl.dsp.window.move({ workspace = "2" }))
hl.bind("SUPER + SHIFT + 3", hl.dsp.window.move({ workspace = "3" }))
hl.bind("SUPER + SHIFT + 4", hl.dsp.window.move({ workspace = "4" }))
hl.bind("SUPER + SHIFT + 5", hl.dsp.window.move({ workspace = "5" }))
hl.bind("SUPER + SHIFT + 6", hl.dsp.window.move({ workspace = "6" }))
hl.bind("SUPER + SHIFT + 7", hl.dsp.window.move({ workspace = "7" }))
hl.bind("SUPER + SHIFT + 8", hl.dsp.window.move({ workspace = "8" }))

-- Focus windows
hl.bind("SUPER + H", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + J", hl.dsp.focus({ direction = "d" }))
hl.bind("SUPER + K", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + L", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + TAB", hl.dsp.focus({ workspace = "previous" }))

-- Move windows
hl.bind("SUPER + SHIFT + H", hl.dsp.window.swap({ direction = "l" }))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.swap({ direction = "d" }))
hl.bind("SUPER + SHIFT + K", hl.dsp.window.swap({ direction = "u" }))
hl.bind("SUPER + SHIFT + L", hl.dsp.window.swap({ direction = "r" }))

-- Mouse move / resize floating windows
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Launch
hl.bind("SUPER + D", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind("SUPER + B", hl.dsp.exec_cmd("firefox"))
hl.bind("SUPER + RETURN", hl.dsp.exec_cmd("kitty"))

-- Sound bindings
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"),
	{ repeating = true }
)

hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ repeating = true }
)

hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true }
)
hl.window_rule({
	match = {
		class = "org.pulseaudio.pavucontrol",
	},
	float = true,
})

-- Devices
hl.device({
	name = "logitech-pro-x-2-1",
	sensitivity = -0.5,
	accel_profile = "adaptive",
	scroll_factor = 1.0,
})
