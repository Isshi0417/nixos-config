{ pkgs, ... }:

{
  home.packages = with pkgs; [
    rofi
    rofi-emoji
  ];

  home.file.".config" = {
    recursive = true;
    source = ./config;
  };
}