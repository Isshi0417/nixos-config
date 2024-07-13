{ ... }:

{
  home.file.".local/share/konsole" = {
    recursive = true;
    source = ./config;
  };
}