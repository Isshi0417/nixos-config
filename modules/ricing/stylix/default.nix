{ pkgs, ... }:

{
    imports = [
        ./themes
    ];

    stylix.homeManagerIntegration.followSystem = true;

    stylix.cursor.package = pkgs.bibata-cursors;
    stylix.cursor.name = "Bibata-Modern-Ice";

    stylix.opacity = {
        applications = 0.9;
        terminal = 0.9;
        desktop = 0.5;
        popups = 0.9;
    };

    stylix.polarity = "dark";
}