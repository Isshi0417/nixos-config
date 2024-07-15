{ pkgs, ... }:

{
  stylix = {
    enable = true;
    autoEnable = false;

    homeManagerIntegration.autoImport = false;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";

    cursor = {
      package = pkgs.afterglow-cursors-recolored;
      name = "Afterglow-Recolored-Gruvbox-White";
      size = 24;
    };

    polarity = "dark";

    targets = {
      chromium.enable = true;
      console.enable = true;
      gnome.enable = true;
      gtk.enable = true;
    };
  };
}