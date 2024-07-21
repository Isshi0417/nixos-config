{ pkgs,... }:

{
  home.packages = with pkgs.gnome; ([
    gnome-tweaks
  ]) ++ (with pkgs.gnomeExtensions; [
    arcmenu
    blur-my-shell
    caffeine
    clipboard-indicator
    dash-to-dock
    forge
    freon
    gsconnect
    space-bar
    systemd-manager
    wifi-qrcode
  ]);
}
