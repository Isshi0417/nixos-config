{ config, ... }:

{
    wayland.windowManager.hyprland = {
        enable = true;

        settings = {
            monitor = [
                "eDP-1, preferred, auto-right, 1"
                "HDMI-A-2, preferred, auto-left, 1"
            ];

            "$mod" = "SUPER";
            bind = [
                "$mod, F, exec, firefox"
                "$mod, T, exec, kitty"
            ];
        };
    };
}