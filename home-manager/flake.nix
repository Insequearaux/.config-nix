{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.zst";
    home_manager.url = "github:nix-community/home-manager";
  };

  outputs = inputs: {
	homeConfigurations."ets-c837622227" = inputs.home_manager.lib.homeManagerConfiguration {
		modules = [
			./home.nix	
		];
		pkgs = inputs.nixpkgs.legacyPackages."x86_64-linux";

	};
  };

}
