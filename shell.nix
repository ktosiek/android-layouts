let
  pkgs = (import <nixpkgs> {});

in (pkgs.callPackage ./default.nix {}).overrideDerivation(super: {
  buildInputs = [] ++ super.buildInputs;
  shellHook = ''
    export PATH=${pkgs.androidenv.platformTools}/platform-tools/:$PATH
  '';
})