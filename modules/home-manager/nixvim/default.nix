{ pkgs, ... }:

{
  imports = [
    ./plugins
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    vimdiffAlias = true;
    
    colorschemes.gruvbox = {
      enable = true;
      package = pkgs.vimPlugins.gruvbox-nvim;
    };

    globals = {
      mapleader = " ";
      maplocalleader = " ";

      have_nerd_font = true;
    };

    opts = {
      # Show line numbers
      number = true;
      relativenumber = true;

      # Enable mouse mode
      mouse = "a";

      # Don't show the mode
      showmode = false;
      
      # Sync clipboard with OS
      clipboard = "unnamedplus";

      # Enable break indent
      breakindent = true;

      # Save undo history
      undofile = true;

      # Case-insensitive searching unless stated otherwise
      ignorecase = true;
      smartcase = true;

      # Keep isgncolumn on by default
      signcolumn = "yes";

      # Decrease update time
      updatetime = 250;

      # Decrease mapped sequence wait time
      timeoutlen = 300;

      # Configure split behavior
      splitright = true;
      splitbelow = true;

      # Set how neovim displays whitespace characters
      list = true;
      listchars.__raw = "{ tab = '» ', trail = '·', nbsp = '␣' }";

      # Preview substitutions live
      inccommand = "split";

      # Show which line the cursor is on
      cursorline = true;

      # Minimal number of screen lines to keep above and below the cursor
      scrolloff = 20;

      # Set highlight on search but clear on pressing <Esc> in normal mode
      hlsearch = true;
    };
    
    keymaps = [
      {
        mode = "n";
        key = "<Esc>";
        action = "<cmd>nohlsearch<CR>";
      }

      {
        mode = "t";
        key = "<Esc><Esc>";
        action = "<C-\\><C-n>";
        options = {
          desc = "Exit terminal mode";
        };
      }
      
      {
        mode = "n";
        key = "<C-h>";
        action = "<C-w><C-h>";
        options = {
          desc = "Move focus to the left window";
        };
      }

      {
      	mode = "n";
      	key = "<C-l>";
	      action = "<C-w><C-l>";
	      options = {
	        desc = "Move focus to the right window";
      	};
      }

      {
      	mode = "n";
      	key = "<C-j>";
	      action = "<C-w><C-l>";
	      options = {
	        desc = "Move focus to the lower window";
	      };
      }

      {
      	mode = "n";
	      key = "<C-k>";
	      action = "<C-w><C-k>";
	      options = {
	        desc = "Move focus to the upper window";
	      };
      }
    ];
    
    autoGroups = {
      kickstart-highlight-yank = {
        clear = true;
      };
    };

    # Basic autocommands
    autoCmd = [
      {
        event = ["TextYankPost"];
      	desc = "Highlight when yanking (copying) text";
	      group = "kickstart-highlight-yank";
	      callback.__raw = ''
	        function()
	          vim.highlight.on_yank()
	        end
	      '';
      }
    ];

    plugins = {
      sleuth = {
        enable = true;
      };
    
      comment = {
        enable = true;
      };

      todo-comments = {
        enable = true;
	      signs = true;
      };
    };

    extraPlugins = with pkgs.vimPlugins; [
      nvim-web-devicons
    ];

    extraConfigLuaPre = ''
      if vim.g.have_nerd_font then
        require('nvim-web-devicons').setup {}
      end
    '';

    extraConfigLuaPost = ''
      -- vim: ts=2 sts=2 sw=2 et
    '';  
  };
}
