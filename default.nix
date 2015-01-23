{ pkgs ? (import <nixpkgs> {}),
  androidenv ? pkgs.androidenv,
  }:

androidenv.buildApp {
  name = "android-layouts";
  src = ./.;
  platformVersions = [ "16" ];
  useGoogleAPIs = false;
}