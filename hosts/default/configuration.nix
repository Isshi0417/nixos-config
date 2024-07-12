# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ inputs, config, pkgs, lib, ... }:

{
  imports =
    [ # Hardware-related
      ./hardware-configuration.nix
      ../../modules/hardware

      # System
      ../../modules/system

      # NH
      ../../modules/nh

      # Gaming
      ../../modules/gaming

      # Ricing
      ../../modules/ricing

      # Home-manager
      inputs.home-manager.nixosModules.default
    ];

  # Swap
  swapDevices = [{
    device = "/var/lib/swapfile";
    size = 20*1024;
  }];

  # Hardware update
  hardware = {
    enableRedistributableFirmware = lib.mkDefault true;
  };

  # Temp control
  services = {
    fwupd = {
      enable = lib.mkDefault true;
    };
    thermald = {
      enable = lib.mkDefault true;
    };
  };

  networking.hostName = "alienware"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Enable mullvad
  services.mullvad-vpn.enable = true;
  
  # Set your time zone.
  time.timeZone = "Asia/Seoul";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  services.xserver.displayManager.gdm = {
    enable = true;
    wayland = true;
  };

  programs.zsh.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.shoi = {
    isNormalUser = true;
    description = "Sho Ishida";
    extraGroups = [ "networkmanager" "wheel" "input" ];
    shell = pkgs.zsh;
  };
  
  # Home Manager
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "shoi" = import ./home.nix;
    };
  };

  home-manager.backupFileExtension = "backup";

  environment.sessionVariables = {
    FLAKE = "/home/shoi/etc/nixos";
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    lm_sensors
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?

}
