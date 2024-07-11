{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    catppuccin.url = "github:catppuccin/nix";

    stylix.url = "github:danth/stylix";

    aagl = {
      url = "github:ezKEa/aagl-gtk-on-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosConfigurations.alienware = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          # Config
          ./hosts/default/configuration.nix

          # Home-manager
          inputs.home-manager.nixosModules.default

          # Catppuccin
          # inputs.catppuccin.nixosModules.catppuccin
          
          # Stylix
          inputs.stylix.nixosModules.stylix

          #Aagl
          inputs.aagl.nixosModules.default
        ];
      };
    };
}

