{
  description = "SolanaSeason project - data visualization for the Solana blockchain";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils/b543720b25df6ffdfcf9227afafc5b8c1fabfae8";
  };

  outputs = i:
    i.flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = i.nixpkgs.legacyPackages.${system};
      in
      rec {
        packages = i.flake-utils.lib.flattenTree {
          hello = pkgs.hello;
        };
        defaultPackage = packages.hello;
        apps.hello = i.flake-utils.lib.mkApp { drv = packages.hello; };
        defaultApp = apps.hello;
      }
    );
}
