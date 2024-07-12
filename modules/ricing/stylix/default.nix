{ pkgs, ... }:

{
    stylix = {
        enable = true;
        autoEnable = true;

        homeManagerIntegration.autoImport = false;

        image = ../../wallpapers/maze.png;

        polarity = "dark";

        targets.grub.useImage = true;

        cursor = {
            package = pkgs.bibata-cursors;
            name = "Bibata-Modern-Ice";
        };
    };
}