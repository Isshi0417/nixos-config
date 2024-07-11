{ pkgs, ... }:

{
    # Enable wine
    environment.systemPackages = with pkgs; [
        wineWowPackages.stable
        wineWowPackages.staging
        winetricks
        lutris
        dxvk_2
    ];
}