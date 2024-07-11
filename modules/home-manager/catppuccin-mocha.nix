{ inputs, ... }:

{
    imports = [
        inputs.catppuccin.homeManagerModules.catppuccin
    ];

    catppuccin = {
        enable = true;
        flavor = "mocha";

        pointerCursor.enable = true;
    };

    gtk = {
        enable = true;

        catppuccin = {
            enable = true;
            flavor = "mocha";  
            gnomeShellTheme = true;

            icon = {
                enable = true;
                flavor = "mocha";
            };
        };
    };

    programs.kitty.catppuccin.enable = true;
    programs.kitty.catppuccin.flavor = "mocha";

    programs.neovim.catppuccin.enable = true;
    programs.neovim.catppuccin.flavor = "mocha";

    programs.rofi.catppuccin.enable = true;
    programs.rofi.catppuccin.flavor = "mocha";

    programs.starship.catppuccin.enable = true;
    programs.starship.catppuccin.flavor = "mocha";

    programs.waybar.catppuccin.enable = true;
    programs.waybar.catppuccin.flavor = "mocha";

    programs.zsh.syntaxHighlighting.catppuccin.enable = true;
    programs.zsh.syntaxHighlighting.catppuccin.flavor = "mocha";

    qt.style.catppuccin.enable = true;
    qt.style.catppuccin.accent = "mocha";
    qt.style.catppuccin.apply = true;
}