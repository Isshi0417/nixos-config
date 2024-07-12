{ pkgs, ... }:

{
    imports = [
        ./awesomewm
        ./hyprland
        ./rofi
    ];

    # GTK theming
    gtk.enable = true;

    gtk.iconTheme.package = pkgs.gruvbox-plus-icons;
    gtk.iconTheme.name = "Gruvbox-Plus-Dark";

    # Qt theming
    qt.enable = true;
    qt.platformTheme = "gtk";
    qt.style.name = "adwaita-dark";
    qt.style.package = pkgs.adwaita-qt;

    programs.yazi.enable = true;

    home.packages = with pkgs; [
        pcmanfm
        bottom
    ];
}