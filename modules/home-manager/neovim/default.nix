{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    vimAlias = true;
    vimdiffAlias = true;
  };
  
  home.file.".config/nvim" = {
    recursive = true;
    source = ./config;
  };
}
