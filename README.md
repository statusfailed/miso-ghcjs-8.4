# Miso Sample App for GHCJS 8.4

This is a minimal Miso sample app from
[miso's README](https://github.com/dmjio/miso/blob/master/README.md),
along with nix files to build with GHCJS 8.4.

Nix files are adapted from FPtje's
[miso-jswidget-example](https://github.com/FPtje/miso-jswidget-example). I say
"adapted"- those files are pretty close to minimally working anyway. Most of
nixpkgs.nix seems to be dealing with stopping doctest from breaking the build!
Thanks FPtje :)

The sample application also imports functions from the "containers" package
which are only available in GHCJS 8.4, to prove that it is indeed compiled
under 8.4.
