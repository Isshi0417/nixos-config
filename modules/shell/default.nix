{ pkgs, ... }:

{
    # Download zsh packages
    environment.systemPackages = with pkgs; [
        zsh
        oh-my-zsh
    ];

    # Enable zsh
    programs.zsh = {
        enable = true;

        # oh-my-zsh
        oh-my-zsh = {
            enable = true;
            plugins = [
                "git"
                "thefuck"
                "zoxide"
            ];
        };
    };

    programs.thefuck = {
        enable = true;
        alias = "fuck";
    };
}