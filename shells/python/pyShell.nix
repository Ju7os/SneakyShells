{ pkgs }:
let
  packageOverrides = pkgs.callPackage ./python-packages.nix {};
  # python = pkgs.python3.override {inherit packageOverrides;};
in
pkgs.mkShell {
  
  packages = [
      (pkgs.python3.withPackages(p: [ p.numpy p.scipy p.matplotlib p.seaborn ]))
  ];


}
