{ ... }:

{
  programs.nixvim.plugins.lualine = {
    enable = true;
    globalstatus = true;
    iconsEnabled = true;
    theme = "gruvbox_dark";
  };
}
