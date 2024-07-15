{ pkgs, ... }:

{
    imports = [
        ./git
        ./qt/retro
        ./shell
        ./terminal
    ];

    # Allow Unfree
    nixpkgs.config.allowUnfree = true;

    home.packages = with pkgs; [
        # Essentials
        ferdium
        vscode-fhs

        # School
        libreoffice-fresh
        onedrive
        typora
        logisim

        # Utils
        corefonts
        noto-fonts
    ];

    programs = {
        # Essentials
        firefox.enable = true;
        git.enable = true;
        gh.enable = true;

        # School
        pandoc.enable = true;

        # Utils
        bat.enable = true;
        lazygit.enable = true;
        mangohud.enable = true;
        zathura.enable = true;
    };
}