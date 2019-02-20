{ pkgs ? import ./nixpkgs.nix }:
let
  inherit (pkgs.haskell.packages) ghcjs;

  drv = ghcjs.callCabal2nix "miso-ghcjs84" ./. {};

  final = pkgs.runCommand "miso-ghcjs84" {} ''
    mkdir $out
    cp ${drv}/bin/miso-ghcjs84.jsexe/all.js $out/all.js
    cp ${./html-src/index.html} $out/index.html
  '';
in
  if pkgs.lib.inNixShell then drv.env else final
