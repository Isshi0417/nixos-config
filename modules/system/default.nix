{ pkgs, ... }:

{
    imports = [
        ./boot
        ./experimental
        ./network
        ./desktop
        ./printing
        ./bluetooth
        ./audio
    ];

    services.xserver = {
        enable = true;
    };

    services.displayManager.sddm = {
        enable = true;

        wayland = {
            enable = true;
            compositor = "kwin";
        };
    };

    nixpkgs.config.allowUnfree = true;

    environment.systemPackages = with pkgs; [
        wget
        gparted
        nh
        playerctl
    ];

    fonts = {
        enableDefaultPackages = true;
        packages = with pkgs; [
            noto-fonts
            noto-fonts-color-emoji
            nerdfonts
            font-awesome
        ];

        fontconfig = {
            defaultFonts = {
                serif = [ "Hack Nerd Font" ];
                sansSerif = [ "DejaVuSansM Nerd Font" ];
                monospace = [ "JetBrainsMono Nerd Font" ];
            };
        };
    };
}