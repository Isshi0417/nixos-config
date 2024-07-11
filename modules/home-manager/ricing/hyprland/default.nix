{ config, ... }:

{
    wayland.windowManager.hyprland = {
        enable = true;

        settings = {
            monitor = [
                "eDP-1, preferred, auto-right, 1"
                "HDMI-A-2, preferred, auto-left, 1"
            ];

            workspace = "name:1, monitor:HDMI-A-2";

            exec-once = [
                "ferdium"
                "hyprctl dispatch workspace 1"
            ];

            env = [
                "XCURSOR_SIZE,24"
                "HYPRCURSOR_SIZE,24"
            ];

            general = {
                gaps_in = "5";
                gaps_out = "20";

                border_size = "2";

                resize_on_border = "false";

                allow_tearing = "false";

                layout = "dwindle";
            };

            decoration = {
                rounding = "10";

                drop_shadow = "true";
                shadow_range = "4";
                shadow_render_power = "3";

                blur = {
                    enabled = "true";
                    size = "3";
                    passes = "1";

                    vibrancy = "0.1696";
                };
            };

            animations = {
                enabled = "true";

                bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";

                animation = [
                    "windows, 1, 7, myBezier"
                    "windowsOut, 1, 7, default, popin 80%"
                    "border, 1, 10, default"
                    "borderangle, 1, 8, default"
                    "fade, 1, 7, default"
                    "workspaces, 1, 6, default"
                ];
            };

            dwindle = {
                pseudotile = "true";
                preserve_split = "true";
            };

            master = {
                new_status = "master";
            };

            misc = {
                force_default_wallpaper = "0";
                disable_hyprland_logo = "true";
            };

            input = {
                kb_layout = "us";
            };

            gestures = {
                workspace_swipe = "false";
            };

            "$mod" = "SUPER";
            bind = [
                "$mod, F, exec, firefox"
                "$mod, T, exec, kitty"
                "$mod, Q, killactive,"
                "$mod, M, exit,"
                "$mod, E, exec, nautilus"
                "$mod, V, togglefloating,"
                "$mod, P, pseudo,"
                "$mod, J, togglesplit,"

                "$mod, left, movefocus, l"
                "$mod, right, movefocus, r"
                "$mod, up, movefocus, u"
                "$mod, down, movefocus, d"

                "$mod, 1, workspace, 1"
                "$mod, 2, workspace, 2"
                "$mod, 3, workspace, 3"
                "$mod, 4, workspace, 4"

                "$mod SHIFT, 1, movetoworkspace, 1"
                "$mod SHIFT, 2, movetoworkspace, 2"
                "$mod SHIFT, 3, movetoworkspace, 3"
                "$mod SHIFT, 4, movetoworkspace, 4"

                "$mod, mouse_down, workspace, e+1"
                "$mod, mouse_up, workspace, e-1"
            ];

            bindm = [
                "$mod, mouse:272, movewindow"
                "$mod, mouse:273, resizewindow"
            ];

            windowrulev2 = "suppressevent maximize, class:.*";
        };
    };
}