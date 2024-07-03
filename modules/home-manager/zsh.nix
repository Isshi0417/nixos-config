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
            aws.style = "bold #FF9580";        
            cmd_duration.style = "bold #FFFF80";   
            directory.style = "bold #FFCA80";    
            hostname.style = "bold #9580FF";     
            git_branch.style = "bold #80FFEA";     
            git_status.style = "bold #FF80BF";     
            username = {
                format = "[$user]($style) on ";
                style_user = "bold #8AFF80";     
            };
            character = {
                success_symbol = "[λ](bold #F8F8F2)";  
                error_symbol = "[λ](bold #FF9580)";    
            };
        };
    };
}