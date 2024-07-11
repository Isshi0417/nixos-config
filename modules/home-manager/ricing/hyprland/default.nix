{ config, ... }:

{
    imports = [
        ./hyprpaper.nix
    ];

    home.file = {
        ".config/hypr" = {
            recursive = true;
            source = ../../../dotfiles/hyprland;
        };
    };
}