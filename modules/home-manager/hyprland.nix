{ config, pkgs, lib, ... }:

{
    wayland.windowManager.hyprland = {
        enable = true;
        xwayland.enable = true;
        systemd.enable = true;
    };
}