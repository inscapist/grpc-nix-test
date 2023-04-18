{
  description = "Grpc nix test";

  nixConfig = {
    extra-substituters =
      "https://nixpkgs-ruby.cachix.org https://rails-env-esper-will.cachix.org";
    extra-trusted-public-keys =
      "nixpkgs-ruby.cachix.org-1:vrcdi50fTolOxWCZZkw0jakOnUI1T19oYJ+PRYdK4SM= rails-env-esper-will.cachix.org-1:bn0ZdSSPPsaTMcMiFfBqsoeo50J3CPUJLI0XLSDlqw8=";
  };

  inputs = {
    nixpkgs.url = "nixpkgs";
    ruby-nix.url = "github:sagittaros/ruby-nix/v0.1.5";
    bundix = {
      url = "github:sagittaros/bundix/main";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    fu.url = "github:numtide/flake-utils";
    bob-ruby.url = "github:bobvanderlinden/nixpkgs-ruby";
    bob-ruby.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, fu, ruby-nix, bundix, bob-ruby }:
    with fu.lib;
    eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ bob-ruby.overlays.default ];
        };
        gemConfig = {};
        gemset = import ./gemset.nix;
        bundixcli = bundix.packages.${system}.default;

      in rec {
        inherit (ruby-nix.lib pkgs {
          name = "my-rails-app";
          gemset = gemset;
          ruby = pkgs."ruby-2.7.6";
          gemConfig = pkgs.defaultGemConfig // gemConfig;
        })
          env;

        requirements = [ env ] ++ (with pkgs; [
        ]);

        devShells = rec {
          default = dev;
          dev = pkgs.mkShell {
            buildInputs = requirements ++ [ bundixcli ];
          };
        };
      });
}

