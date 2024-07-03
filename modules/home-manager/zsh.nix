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

    # Configure starship
    programs.starship = {
        enable = true;
        enableZshIntegration = true;
        settings = {
            aws.style = "bold #D22B2B";
            cmd_duration.style = "bold #98C379";
            directory.style = "bold #D199A66";
            hostname.style = "bold #61AFEF";
            git_branch.style = "bold #C678DD";
            git_status.style = "bold #61AFEF";
            username = {
                format = "[$user]($styule) on ";
                style_user = "bold #56B6C2";
            };
            character = {
                success_symbol = "[λ](bold #ABB2BF)";
                error_symbol = "[λ](bold #D22B2B)";
            };
        };
    };
}