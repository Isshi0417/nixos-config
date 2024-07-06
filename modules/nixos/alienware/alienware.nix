{ lib, ... }:

{
    imports = [
        ./hardware/cpu/tiger-lake.nix
        ./hardware/gpu/nvidia.nix
        ./gaming.nix
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