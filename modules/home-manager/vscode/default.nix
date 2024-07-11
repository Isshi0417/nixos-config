{ pkgs, ... }:

{
    programs.vscode = {
        enable = true;
        extensions = with pkgs.vscode-extensions; [
            bbenoist.nix
            ms-python.python
            catppuccin.catppuccin-vsc-icons
            catppuccin.catppuccin-vsc
        ];
    };
}