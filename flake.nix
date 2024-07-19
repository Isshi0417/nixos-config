{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    catppuccin.url = "github:catppuccin/nix";

    aagl = {
      url = "github:ezKEa/aagl-gtk-on-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim.url = "github:/nix-community/nixvim";
  };

  outputs = { self, nixpkgs, home-manager, nixvim, ... }@inputs:
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
          inputs.home-manager.nixosModules.home-manager 

          # Gayshit
          inputs.aagl.nixosModules.default
        ];
      };

      homeConfigurations.shoi = home-manager.lib.homeManagerConfiguration {
        inherit nixvim;
        extraSpecialArgs = { inherit inputs; };
        modules = [
        ];
      };
    };
}

