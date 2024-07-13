{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gruvbox-plus-icons
    afterglow-cursors-recolored
    kde-gruvbox
  ];
}