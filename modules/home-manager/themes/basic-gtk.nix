{ pkgs, lib, ... }:

{
    gtk.enable = true;

    gtk.theme.package = lib.mkForce pkgs.adw-gtk3;
    gtk.theme.name = "adw-gtk3";

    gtk.iconTheme.package = pkgs.tela-circle-icon-theme;
    gtk.iconTheme.name = "Tela-circle-dark";
}