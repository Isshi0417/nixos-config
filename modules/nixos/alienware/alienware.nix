{ lib, ... }:

{
    imports = [
        ./hardware/cpu/tiger-lake.nix
        ./hardware/gpu/nvidia.nix
        ./hardware/ssd/ssd.nix
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