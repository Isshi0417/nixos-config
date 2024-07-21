{ pkgs,... }:

{
  home.packages = with pkgs.gnomeExtensions; [
    pop-shell
    caffeine
    clipboard-indicator
    blur-my-shell
  ];
}
