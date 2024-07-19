{ ... }:

{
  programs.nixvim = {
    extraPackages = with pkgs; [
      stylua
    ];

    plugins.conform-nvim = {
      enable = true;
      notifyOnError = false;
      formatOnSave = ''
        function(bufnr)
          local disable_filetypes = { c = true, cpp = true }
          return {
            timeout_ms = 500
            lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype]
          }
        end
      '';

      formattersByFt = {
        lua = ["stylua"];
      };
    };

    keymaps = [
      {
        mode = "";
        key = "<leader>f";
        action.__raw = ''
          function()
            require('conform').format { async = true, lsp_fallback = true }
          end
        '';
        options = {
          desc = "[F]ormat buffer";
        };
      }
    ];
  };
}
