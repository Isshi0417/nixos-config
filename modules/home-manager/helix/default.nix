{ ... }:

{
  programs.helix = {
    enable = true;
    settings = {
      theme = "gruvbox";

      editor = {
        line-number = "relative";
        shell = ["sh" "-c"];
        rulers = [80];

        statusline = {
          left = ["mode" "version-control" "file-name"];
          center = ["read-only-indicator"];
          right = ["file-encoding" "file-modification-indicator" "file-base-name" "position-percentage" "position"];
        };

        cursor-shape = {
          insert = "bar"; 
        };

        indent-guides = {
          render = true;
        };
      };
    };
  };
}
