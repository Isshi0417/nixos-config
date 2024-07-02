{ pkgs, ... }:

{
    # Enable stylix
    services.stylix.enable = libMkforce true;

    stylix.homeManagerIntegration.autoImport = false;
    stylix.homeManagerIntegration.followSystem = true;

    stylix.image = ./wallpapers/ghibli-3.png;

    stylix.polarity = "light";

    stylix.base16Scheme = {
        base00 = "#F0EBE1"; 
        base01 = "#E1D6C6"; 
        base02 = "#D0C2B2";
        base03 = "#8C8075"; 
        base04 = "#65594E"; 
        base05 = "#4A413B"; 
        base06 = "#322B25";
        base07 = "#1C1813";
        base08 = "#BF591E";
        base09 = "#A38625"; 
        base0A = "#86A325"; 
        base0B = "#25A36C"; 
        base0C = "#257EA3"; 
        base0D = "#4659BF"; 
        base0E = "#8646BF"; 
        base0F = "#BF4686";
    };
}