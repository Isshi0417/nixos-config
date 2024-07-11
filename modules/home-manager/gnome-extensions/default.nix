{ pkgs, ... }:

{
    home.packages = with pkgs.gnomeExtensions; [
        caffeine
        dash-to-dock
        gnome-40-ui-improvements
        media-controls
        search-light
    ];

    dconf = {
        enable = true;
        settings."org/gnome/shell" = {
            disable-user-extensions = false;
            enabled-extensions = with pkgs.gnomeExtensions; [
                caffeine.extensionUuid
                dash-to-dock.extensionUuid
                gnome-40-ui-improvements.extensionUuid
                media-controls.extensionUuid
                search-light.extensionUuid
            ];
        };
    };
}