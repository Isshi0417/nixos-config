{ config, lib, pkgs, ... }:

# https://nixos.wiki/wiki/Nvidia

{
    # Enable OpenGL
    hardware.opengl = {
        enable = true;
    };

    # Load NVIDIA driver for Xorg and Wayland
    services.xserver.videoDrivers = ["nvidia"];

    hardware.nvidia = {
        modesetting.enable = true;
        powerManagement.enable = false;
        powerManagement.finegrained = false;
        open = false;
        nvidiaSettings = true;
        package = config.boot.kernelPackages.nvidiaPackages.stable;
    };

    # Configure OptimusPRIME
    hardware.nvidia.prime = {
        sync.enable = true;

        nvidiaBusId = "PCI:1:0:0";
        intelBusId = "PCI:0:2:0";
    };
}