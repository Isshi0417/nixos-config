{ pkgs, ... }:

{
    imports = [
        ./git
        ./qt/retro
        ./terminal
        ./oh-my-posh
        ./neovim
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
        cool-retro-term
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
        eza.enable = true;
        lazygit.enable = true;
        mangohud.enable = true;
        zathura.enable = true;
        zoxide.enable = true;

        zsh = {
            enable = true;
            enableCompletion = true;
            syntaxHighlighting.enable = true;
            autosuggestion.enable = true;
        };
    };
}