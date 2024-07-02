{ pkgs, ... }:

{
    gtk.enable = true;
    
    # Cursors
    gtk.cursorTheme.package = pkgs.bibata-cursors;
    gtk.cursorTheme.name = "Bibata-Modern-Ice";

    gtk.theme.package = pkgs.arc-theme;
    gtk.theme.name = "Arc-Lighter";

    gtk.iconTheme.package = pkgs.papirus-icon-theme;
    gtk.iconTheme.name = "Papirus-Dark";
}