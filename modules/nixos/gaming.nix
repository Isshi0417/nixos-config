{ pkgs, ... }:

{
    # Enable Steam
    programs.steam = {
        enable = true;
        remotePlay.openFirewall = true;
        dedicatedServer.openFirewall = true;
        localNetworkGameTransfers.openFirewall = true;
    };

    # Enable wine
    environment.systemPackages = with pkgs; [
        wineWowPackages.stable
        wineWowPackages.staging
        winetricks
        lutris
    ];
}