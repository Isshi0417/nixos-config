{ ... }:

{
  programs.nixvim.plugins.cmp = {
    enable = true;

    mapping = {
      "<C-n>" = "cmp.mapping.select_next_item()";
      "<C-p>" = "cmp.mapping.select_prev_item()";
      "<C-b>" = "cmp.mapping.scroll-docs(-4)";
      "<C-f>" = "cmp.mapping.scroll-docs(4)";
      "<C-y>" = "cmp.mapping.confirm { select = true }";
      "<C-Space>" = "cmp.mapping.complete {}";
    };
  };
}
