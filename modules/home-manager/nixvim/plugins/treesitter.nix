{ config, pkgs, inputs, ... }:

{
  programs.nixvim.plugins.treesitter = {
    enable = true;

    indent = true;
  };
}
