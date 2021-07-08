# https://www.tweag.io/blog/2020-07-31-nixos-flakes/

# To switch from channels to flakes execute:
# cd /etc/nixos
# sudo wget -O flake.nix https://gist.githubusercontent.com/misuzu/80af74212ba76d03f6a7a6f2e8ae1620/raw/flake.nix
# sudo sed -i "s/nixos/$(hostname)/g" flake.nix
# sudo git init
# sudo git add . # won't work without this
# nix run nixpkgs.nixFlakes -c sudo nix --experimental-features 'flakes nix-command' build .#nixosConfigurations.$(hostname).config.system.build.toplevel
# sudo ./result/bin/switch-to-configuration switch

# Now nixos-rebuild can use flakes:
# sudo nixos-rebuild switch --flake /etc/nixos

# To update flake.lock run:
# sudo nix flake update --recreate-lock-file --commit-lock-file /etc/nixos

{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  inputs.home-manager.url = "github:nix-community/home-manager";
  inputs.home-manager.inputs.nixpkgs.follows = "/nixpkgs";

  # inputs.neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";

  outputs = inputs: {

    nixosConfigurations.nixos = inputs.nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      # Things in this set are passed to modules and accessible
      # in the top-level arguments (e.g. `{ pkgs, lib, inputs, ... }:`).
      specialArgs = {
        inherit inputs;
      };
      modules = [
        inputs.home-manager.nixosModules.home-manager

        ({ pkgs, config, ... }: {
          nix.extraOptions = "experimental-features = nix-command flakes";
          nix.package = pkgs.nixFlakes;
          nix.registry.nixpkgs.flake = inputs.nixpkgs;
          
          home-manager.useGlobalPkgs = true;

        })

        ./configuration.nix
      ];
    };
  };
}
