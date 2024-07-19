{ ... }:

{
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    vimdiffAlias = true;
    
    enableMan = true;

    colorschemes.gruvbox.enable = true;

    opts = {
      number = true;
      relativenumber = true;
    };
    
    plugins = {
      lualine.enable = true;
      treesitter.enable = true;
      telescope.enable = true;
      lazygit.enable = true;
      cmp.enable = true;
      sleuth.enable = true;
      nvim-autopairs.enable = true;
      neoscroll.enable = true;
      indent-blankline.enable = true;
      bufferline.enable = true;
      which-key.enable = true;
      comment.enable = true;
      dashboard.enable = true;
    };  
  };
}
