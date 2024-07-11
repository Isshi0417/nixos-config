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

    nixpkgs.config.allowUnfree = true;

    environment.systemPackages = with pkgs; [
        wget
        gparted
        nh
    ];

    fonts = {
        enableDefaultPackages = true;
        packages = with pkgs; [
            noto-fonts
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