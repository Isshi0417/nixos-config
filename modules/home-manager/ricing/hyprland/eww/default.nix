{ pkgs, ... }:

{

  programs.eww = {
    configDir = ./config;
    enable = true;
  };
}