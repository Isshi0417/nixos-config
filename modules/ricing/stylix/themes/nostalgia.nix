{ pkgs, ... }:

{
    stylix.enable = true;
    stylix.autoEnable = false;

    stylix.base16Scheme = {
        base00 = "282828"; 
        base01 = "3c3836"; 
        base02 = "504945"; 
        base03 = "665c54"; 
        base04 = "bdae93"; 
        base05 = "d5c4a1";
        base06 = "ebdbb2";
        base07 = "fbf1c7"; 
        base08 = "fb4934"; 
        base09 = "fe8019"; 
        base0A = "fabd2f"; 
        base0B = "b8bb26"; 
        base0C = "8ec07c";
        base0D = "d3869b"; 
        base0E = "d65d0e";
        base0F = "83a598"; 
    };

    stylix.image = ../../../wallpapers/maze.png;

    # GRUB
    stylix.targets.grub = {
        enable = true;
        useImage = true;
    };

    # Console
    stylix.targets.console.enable = true;

    # GNOME
    stylix.targets.gnome.enable = true;

    # GTK
    stylix.targets.gtk.enable = true;
}