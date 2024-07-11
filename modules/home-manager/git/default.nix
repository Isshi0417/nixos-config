{ pkgs, ... }:

# https://nixos.wiki/wiki/Git

{
    programs.git = {
        enable = true;
        userName = "Isshi0417";
        userEmail = "isshi0417@gmail.com";
    };
}