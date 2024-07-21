{ pkgs,... }:

{
  home.packages = with pkgs.gnomeExtensions; [
    caffeine
    clipboard-indicator
    blur-my-shell
    dash-to-dock
    systemd-manager
    wifi-qrcode
    arcmenu
    forge
    freon
    space-bar
    gsconnect
  ];
}
