{ pkgs, ... }:

{
    stylix.enable = true;
    stylix.autoEnable = true;

    stylix.base16Scheme = {
        base00 = "181818"; # Deep Space Black
        base01 = "303030"; # Lunar Gray
        base02 = "484848"; # Meteorite Gray
        base03 = "606060"; # Satellite Silver
        base04 = "808080"; # Moon Dust
        base05 = "9E9E9E"; # Jet Stream
        base06 = "BDBDBD"; # Space Cloud
        base07 = "FFFFFF"; # Pure Energy
        base08 = "F44336"; # Atomic Red
        base09 = "2196F3"; # Cosmic Blue
        base0A = "4CAF50"; # Radioactive Green
        base0B = "FFEB3B"; # Solar Yellow
        base0C = "9C27B0"; # Nebula Purple
        base0D = "FF9800"; # Martian Orange
        base0E = "795548"; # Rocket Brown
        base0F = "607D8B"; # Satellite Blue
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