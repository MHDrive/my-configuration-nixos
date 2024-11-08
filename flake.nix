{
  description = "NixOS Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    # home-manager, used for managing user configuration
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations.nixos-mh = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
       ./modules
       home-manager.nixosModules.home-manager
       {
         home-manager.useGlobalPkgs = true;
         home-manager.useUserPackages = true;

         # To Do replace mh with your own username
         home-manager.users.mh = import ./home-manager;
       }
      ];
    };
  };
}
