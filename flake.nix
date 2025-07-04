{
  description = "A source of Nix shells for explicit envs";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: 
    let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    in
  {
    devShells.${system} = {
      pyShell = import ./shells/python/pyShell.nix {inherit pkgs;};
    };
  };
}
