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
        ./window-manager
    ];

    services.xserver = {
        enable = true;
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
                sansSerif = [ "Hack Nerd Font" ];
                monospace = [ "GohuFont 14 Nerd Font" ];
            };
        };
    };
}