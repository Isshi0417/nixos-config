{ pkgs, ... }:

{
  services.picom = {
    enable = true;

    settings = {
      backend = "glx";

      shadow = "false";

      inactive-opacity = 1;
      active-opacity = 1;
      frame-opacity = 1;
      inactive-opacity-override = true;

      fading = true;
      fade-in-step = 0.03;
      fade-out-step = 0.03;
      fade-delta = 4;
      no-fading-destroyed-argb = true;

      corner-radius = 18;
      round-bordered = 1;

      rounded-corners-exclude = [
        "class_g = 'Rofi'"
      ];

      vsync = true;
      };
  };
}