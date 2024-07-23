{ pkgs,... }:

{
  home.packages = with pkgs.gnome; ([
    gnome-tweaks
  ]) ++ (with pkgs.gnomeExtensions; [
    arcmenu
    caffeine
    clipboard-indicator
    dash-to-dock
    forge
    freon
    gsconnect
    just-perfection
    space-bar
    systemd-manager
    wifi-qrcode
  ]);
}
