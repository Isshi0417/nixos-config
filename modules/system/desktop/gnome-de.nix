{ pkgs, ... }:

{
    services.xserver = {
        desktopManager.gnome.enable = true;
    };

    environment.gnome.excludePackages = (with pkgs; [
        gnome-photos
        gnome-tour
        gedit
    ]) ++ (with pkgs.gnome; [
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
    ]);

    # Configure keymap in X11
    services.xserver = {
    layout = "us";
    xkbVariant = "";
  };
}