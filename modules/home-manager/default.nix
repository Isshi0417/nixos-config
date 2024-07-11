{ pkgs, ... }:

{
    imports = [
        ./git
        ./terminal
        ./gnome-extensions
        ./vscode
        ./ricing
    ];

    # Allow Unfree
    nixpkgs.config.allowUnfree = true;

    home.packages = with pkgs; [
        # Essentials
        ferdium
        git
        gh

        # School
        libreoffice-fresh
        onedrive
        typora
        logisim
        pandoc

        # Utils
        corefonts
        noto-fonts
    ];

    programs.firefox.enable = true;
}