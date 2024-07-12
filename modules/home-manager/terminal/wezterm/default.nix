{ pkgs, ... }:

{

  imports = [
    ./colors.nix
  ];

  programs.wezterm = {
    enable = true;
  };
}