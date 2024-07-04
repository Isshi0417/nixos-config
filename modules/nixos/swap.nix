{ pkgs, ... }:

{
    swapDevices = [{
        device = "/var/lib/swapfile";
        size = 20*1024;
    }];
}