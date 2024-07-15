{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gruvbox-plus-icons
    afterglow-cursors-recolored
  ];

  programs.rofi = {
    enable = true;
    theme = "gruvbox-dark";
  };
}