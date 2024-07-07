{ pkgs, ... }:

{
    stylix.homeManagerIntegration.followSystem = true;

    stylix.enable = true;
    stylix.autoEnable = true;
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

        sizes = {
            applications = 12;
            terminal = 15;
            desktop = 10;
            popups = 10;
        };
    };

    stylix.opacity = {
        applications = 0.9;
        terminal = 0.9;
        desktop = 0.5;
        popups = 0.9;
    };

    stylix.polarity = "dark";
}