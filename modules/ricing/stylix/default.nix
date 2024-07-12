{ ... }:

{
    stylix = {
        enable = true;
        autoEnable = true;

        base16Scheme = {
            base00 = "343232";
            base01 = "413e3e";
            base02 = "4f4a4a";
            base03 = "5c5656";
            base04 = "6a6262";
            base05 = "f6f6ee";
            base06 = "eeeedd";
            base07 = "e5e5cd";
            base08 = "fb5c82";
            base09 = "c2c561";
            base0A = "fbd444";
            base0B = "6075e6";
            base0C = "f273d4";
            base0D = "85c5a8";
            base0E = "caca9b";
            base0F = "953f48";
        };

        image = ../../wallpapers/maze.png;

        polarity = "dark";

        targets.grub.useImage = true;
    };
}