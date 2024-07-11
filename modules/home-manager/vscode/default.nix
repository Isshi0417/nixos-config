{ pkgs, ... }:

{
    programs.vscode = {
        enable = true;
        extensions = with pkgs.vscode-extensions; [
            bbenoist.nix
            ms-python.python
            ms-python.debugpy
            catppuccin.catppuccin-vsc-icons
            catppuccin.catppuccin-vsc
        ];
    };
}