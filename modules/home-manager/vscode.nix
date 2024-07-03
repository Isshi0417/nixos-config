{ pkgs, ... }:

{
    home.programs.vscode = {
        enable = true;
        extensions = with pkgs.vscode-extensions; [
            bbenoist.nix
            ms-python.python
            ms-python.debugpy
        ];
    };
}