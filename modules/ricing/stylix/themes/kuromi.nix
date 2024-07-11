{ lib, config, ... }:

let 
    cfg = config.kuromi; 
in {
    options = {
        kuromi.enable = lib.mkEnableOption "Enable Module";
    };

    config = lib.mkIf cfg.enable {
        stylix.enable = true;
        stylix.image = ../../wallpapers/kuromi.jpg;
    };
}