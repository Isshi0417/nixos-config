{ pkgs, ... }:

{
  stylix = {
    enable = true;
    autoEnable = false;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";

    cursor = {
      package = pkgs.afterglow-cursors-recolored;
      name = "Afterglow-Recolored-Gruvbox-White";
      size = 24;
    };

    image = ../wallpapers/gruvbox_ghibli-6.png;

    polarity = "dark";

    targets = {
      chromium.enable = true;
      console.enable = true;
      gnome.enable = true;
      gtk.enable = true;
    };
  };
}