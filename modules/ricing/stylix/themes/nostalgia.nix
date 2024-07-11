{ pkgs, ... }:

{
    stylix.enable = true;
    stylix.autoEnable = true;

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