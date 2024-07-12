{ ... }:

{
  programs.wezterm.colorSchemes = {
    ansi = [
      "282828" "fb4934" "b8bb26" "fabd2f" 
      "83a598" "d3869b" "8ec07c" "d5c4a1"
    ];

    background = "282828";

    brights = [
      "665c54" "fb4934" "b8bb26" "fabd2f"
      "83a598" "d3869b" "8ec07c" "fbf1c7"
    ];

    cursor_bg = "d5c4a1";
    cursor_fg = "282828";
    foreground = "d5c4a1";
    selection_bg = "d5c4a1";
    selection_fg = "282828";

    tab_bar = {
      background = "282828";
      inactive_tab_edge = "282828";

      active_tab = {
        bg_color = "83a598";
        fg_color = "d5c4a1";
      };

      inactive_tab = {
        bg_color = "282828";
        fg_color = "d5c4a1";
      };

      new_tab = {
        bg_color = "282828";
        fg_color = "83a598";
      };

      new_tab_hover = {
        bg_color = "282828";
        fg_color = "d5c4a1";
      };
    };
  };
}