{ lib, ... }:

{
    imports = [
        ./nh.nix
    ];

    swapDevices = [{
        device = "/var/lib/swapfile";
        size = 20*1024;
    }];

    hardware = {
        enableRedistributableFirmware = lib.mkDefault true;
    };

    services = {
        fwupd = {
            enable = lib.mkDefault true;
        };
        thermald = {
            enable = lib.mkDefault true;
        };
    };
}