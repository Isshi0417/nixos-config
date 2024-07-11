{ config, pkgs, ... }:

{
    home.file = {
        ".config/hypr" = {
            recursive = true;
            source = ../../../dotfiles/hyprland;
        };
    };
}