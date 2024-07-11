{ config, lib, ... }:
{
  imports = [
    ./tiger-lake.nix
  ];

  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}