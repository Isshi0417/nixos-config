{ pkgs, ... }:

{
    imports = [
        
    ];

    environment.systemPackages = with pkgs; [
        libsForQt5.qt5.qtquickcontrols
        libsForQt5.qt5.qtgraphicaleffects
    ];
}