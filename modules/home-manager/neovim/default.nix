{ ... }:

{
  programs.neovim = {
    enable = true;
  };

  home.file.".config/nvim" = {
    recursive = true;
    source = ./config;
  };
}