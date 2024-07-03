{ pkgs, ... }:

{
    # Download zsh packages
    home.packages = with pkgs; [
        zsh
        oh-my-zsh
        starship
    ];

    # Enable zsh
    programs.zsh = {
        enable = true;
        enableCompletion = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;

        # oh-my-zsh
        oh-my-zsh = {
            enable = true;
            plugins = [
                "git"
            ];
            theme = "robbyrussell";
        };
    };
}