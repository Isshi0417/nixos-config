{ pkgs, ... }:

{
  imports = [
    ./konsole
  ];

  qt.enable = true;

  qt.platformTheme = "gtk";

  qt.style.name = "ArcDarker";

  qt.style.package = pkgs.arc-kde-theme;

  home.packages = with pkgs; [
    tela-icon-theme
    afterglow-cursors-recolored
  ];
}