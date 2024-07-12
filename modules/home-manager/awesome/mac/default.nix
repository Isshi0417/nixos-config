{ pkgs, lib, ... }:

{
  imports = [ 
    ./picom
    ./rofi
    ./wezterm
  ];

  home.file.".config/awesome" = {
    recursive = true;
    source = ./dotfiles;
  };

  home.packages = with pkgs; [
    pavucontrol
    pulseaudio-ctl
    wezterm
    hilbish
    emoji-picker
  ];

  gtk.enable = true;

  gtk.iconTheme.package = lib.mkDefault pkgs.whitesur-icon-theme;
  gtk.iconTheme.name = lib.mkDefault "WhiteSur-dark";

  gtk.cursorTheme.package = lib.mkDefault pkgs.volantes-cursors;
  gtk.cursorTheme.name = lib.mkDefault "volantes_cursors";

  gtk.theme.package = lib.mkDefault pkgs.whitesur-gtk-theme;
  gtk.theme.name = lib.mkDefault "WhiteSur-Dark"; 

  fonts.fontconfig = {
    defaultFonts = {
      serif = [ "SF Pro" ];
      sansSerif = [ "Sofia Pro" ];
      monospace = [ "SFMono Nerd Font" ];
    };
  };
}