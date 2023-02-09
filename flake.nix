{
  inputs.nixpkgs.url = github:NixOS/nixpkgs;
  inputs.home-manager.url = github:nix-community/home-manager; 
inputs.nixpkgs-f2k.inputs.nixpkgs.follows = "nixpkgs";
inputs.nixpkgs-f2k.url = "github:fortuneteller2k/nixpkgs-f2k";





  
  outputs = { self, nixpkgs, home-manager,... }@attrs: {
    nixosConfigurations.fnord = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = attrs;
      modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true; 
	    home-manager.users.itzrealduck = import ./home.nix attrs;

          }
        ];
    };
  };
}
