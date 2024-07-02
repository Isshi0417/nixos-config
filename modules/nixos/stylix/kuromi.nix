{ pkgs, ... }:

{
    stylix.enable = true;
    stylix.image = ./wallpapers/kuromi.jpg;

    stylix.cursor.package = pkgs.bibata-cursors;
    stylix.cursor.name = "Bibata-Modern-Ice";

    stylix.fonts = {
        monospace = {
            package = pkgs.nerdfonts.override { fonts = ["JetBrainsMono"]; };
            name = "JetBrainsMono Nerd Font";
        };
        sansSerif = {
            package = pkgs.dejavu_fonts;
            name = "DejaVu Serif";
        };
        serif = {
            package = pkgs.dejavu_fonts;
            name = "Dejavu Serif";
        };
    };

    stylix.polarity = "dark";
}