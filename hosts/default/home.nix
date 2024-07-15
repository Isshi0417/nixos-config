{ inputs,onfig, pkgs, ... }:

{
  imports =
  [
    ../../modules/home-manager

    # Styling
    ../../modules/home-manager/stylix/gruvbox
  ];

  home.username = "shoi";
  home.homeDirectory = "/home/shoi";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  home.packages = with pkgs; [
    # For funsies
    spotify
    vesktop
    

    # Other utility
    mullvad-vpn
    transmission_4-gtk
    imagemagick
    neofetch
    maim
    xclip
    slop
    swappy
    inotify-tools
  ];

  # Clips
  services.clipmenu.enable = true;

  # Enable sound control
  services.easyeffects.enable = true;

  # Enable playerctl daemon
  services.playerctld.enable = true;

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {

  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/shoi/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
