  {
    description = "ThinkPad T480";

    inputs = {
	nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

	home-manager = {
	  url = "github:nix-community/home-manager";
	  inputs.nixpkgs.follows = "nixpkgs";
	};
    };

    outputs = inputs@{nixpkgs, home-manager, ...}: {
	nixosConfigurations.ThinkChad = nixpkgs.lib.nixosSystem {
	  system = "x86_64-linux";
	  modules = [
	    ./configuration.nix
	    home-manager.nixosModules.home-manager
	    {
		home-manager.useGlobalPkgs = true;
		home-manager.useUserPackages = true;
		home-manager.users.kerem = import ./home.nix;
	    }
	  ];
	};
    };
  }
