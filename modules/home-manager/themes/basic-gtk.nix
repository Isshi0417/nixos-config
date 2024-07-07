{ pkgs, lib, ... }:

{
    gtk.enable = true;

    gtk.theme.package = lib.mkDefault pkgs.adw-gtk3;
    gtk.theme.name = lib.mkDefault "adw-gtk3-dark";

    gtk.iconTheme.package = pkgs.tela-circle-icon-theme;
    gtk.iconTheme.name = "Tela-circle-dark";
}