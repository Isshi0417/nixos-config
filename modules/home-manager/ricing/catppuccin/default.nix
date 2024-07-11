{ inputs, ... }:

{
    imports = [
        inputs.catppuccin.homeManagerModules.catppuccin
    ];

    catppuccin = {
        enable = true;
        accent = "rosewater";
        flavor = "latte";

        pointerCursor.enable = true;
    };

    gtk = {
        enable = true;

        catppuccin = {
            enable = true;
            accent = "rosewater";
            flavor = "latte";
            gnomeShellTheme = true;

            icon = {
                enable = true;
                accent = "rosewater";
                flavor = "latte";
            };
        };
    };

    programs.kitty.catppuccin = {
        enable = true;
        flavor = "latte";
    };

    programs.neovim.catppuccin = {
        enable = true;
        flavor = "latte";
    };

    programs.starship.catppuccin = {
        enable = true;
        flavor = "latte";
    };

    programs.zsh.syntaxHighlighting.catppuccin = {
        enable = true;
        flavor = "latte";
    };

    qt.style.catppuccin = {
        enable = true;
        accent = "rosewater";
        apply = true;
        flavor = "latte";
    };
}