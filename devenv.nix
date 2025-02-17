{ pkgs, ... }:
{
  android = {
    enable = true;
    abis = [ "x86_64" ];
    buildTools.version = [ "33.0.2" "33.0.1" "30.0.3" ];
    googleTVAddOns.enable = false;
    android-studio.enable = false;
    flutter.enable = true;
  };

  enterShell = ''
    # Prevents the error: (Xcode): Unknown option: -Xlinker
    # https://github.com/NixOS/nixpkgs/blob/b0d1fe9a32113e0269fae0ea6dd00e5604ccf6a9/pkgs/development/mobile/xcodeenv/build-app.nix#L92
    export LD="/usr/bin/clang"
  '';

  stdenv = pkgs.stdenv.override {
    # Prevents the DEVELOPER_DIR variable from being overwritten
    # https://github.com/cachix/devenv/issues/1674
    extraBuildInputs = [ ];
  };
}
