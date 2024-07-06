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

    # Aagl config
    nix.settings = {
        substituters = [ "https://ezkea.cachix.org" ];
        trusted-public-keys = [ "ezkea.cachix.org-1:ioBmUbJTZIKsHmWWXPe1FSFbeVe+afhfgqgTSNd34eI=" ];
    };

    programs.anime-game-launcher.enable = true;
    programs.anime-games-launcher.enable = true;
    programs.anime-borb-launcher.enable = true;
    programs.honkers-railway-launcher.enable = true;
    programs.honkers-launcher.enable = true;
    programs.wavey-launcher.enable = true;
}