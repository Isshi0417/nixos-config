{ pkgs, ... }:

{
    imports = [
        ./git
        ./terminal
        ./gnome-extensions
        #./awesome
        ./hyprland
        ./qt/retro
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
        maim
    ];

    programs.firefox.enable = true;
}