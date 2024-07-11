{ pkgs, ... }:

{
    imports = [
        ./git
        ./ricing/catppuccin
        ./vscode
        ./terminal
        ./gnome-extensions
    ];

    # Allow Unfree
    nixpkgs.config.allowUnfree = true;

    home.packages = with pkgs; [
        # Essentials
        firefox
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
}