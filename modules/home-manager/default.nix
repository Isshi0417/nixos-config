{ pkgs, ... }:

{
    imports = [
        ./git
        ./terminal
        ./gnome-extensions
        ./ricing
    ];

    # Allow Unfree
    nixpkgs.config.allowUnfree = true;

    home.packages = with pkgs; [
        # Essentials
        ferdium
        git
        gh
        vscode-fhs

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