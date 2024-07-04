{ pkgs, ... }:

{
    swapDevices = [{
        device = "/var/lib/swapfile";
        seize = 20*1024;
    }];
}