{ pkgs, ... }:

{
    environment.systemPackages = with pkgs.gnomeExtensions; [
        caffeine
        dash-to-dock
        gnome-40-ui-improvements
        media-controls
        search-light
    ];

    environment.gnome.excludePackages = with pkgs; [
        gnome-tour
        gedit

        gnome.baobab
        gnome.cheese
        gnome.eog
        gnome.epiphany
        gnome.simple-scan
        gnome.totem
        gnome.yelp
        gnome.evince
        gnome.geary
        gnome.seahorse
        gnome.gnome-contacts
        gnome.gnome-maps
        gnome.gnome-music
    ];
}