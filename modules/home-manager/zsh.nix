{ pkgs, ... }:

{
    # Download zsh packages
    packages = with pkgs; [
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

        programs.zsh = {
            oh-my-zsh = {
                enable = true;
                plugins = [
                    "git"
                ];
                theme = "robbyrussell";
            };
        };
    };
}