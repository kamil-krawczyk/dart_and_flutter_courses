{
  android = {
    enable = true;
    abis = [ "x86_64" ];
    buildTools.version = [ "33.0.2" "33.0.1" "30.0.3" ];
    googleTVAddOns.enable = false;
    android-studio.enable = false;
    flutter.enable = true;
  };
}
