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

    image = ../../../wallpapers/gruvbox_ghibli-6.png;

    polarity = "dark";

    targets = {
      bat.enable = true;
      firefox.enable = true;
      kde.enable = true;
      lazygit.enable = true;
      mangohud.enable = true;
      vesktop.enable = true;
      xresources.enable = true;
      zathura.enable = true;
    };
  };
}