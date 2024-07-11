{ pkgs, ... }:

{
    imports = [
        ./themes
    ];

    stylix.homeManagerIntegration.followSystem = true;

    stylix.cursor.package = pkgs.bibata-cursors;
    stylix.cursor.name = "Bibata-Modern-Ice";

    stylix.polarity = "dark";
}