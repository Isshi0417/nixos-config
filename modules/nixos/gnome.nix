{ pkgs, ... }:

{
    environment.systemPackages = with pkgs.gnomeExtensions; [
        arcmenu
        caffeine
        blur-my-shell
        dash-to-dock
    ];

    environment.gnome.excludePackages = with pkgs.gnome; [
        baobab
        cheese
        eog
        epiphany
        simple-scan
        totem
        yelp
        evince
        geary
        seahorse
        gnome-contacts
        gnome-maps
        gnome-music
    ];
}