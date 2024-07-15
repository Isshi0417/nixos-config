{ pkgs, ... }:

{
  programs.wezterm = {
    enable = true;
    enableZshIntegration = true;
  };

  home.file.".config/wezterm" = {
    recursive = true;
    source = ./config;
  };
}