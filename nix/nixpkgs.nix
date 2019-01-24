let
  src = builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/7790dbe6a27d6bea22ecc62bf21841ccb427ec3b.tar.gz";
    sha256 = "afc87397e0b56f9d7c232a9ef144af1bd832f8ea76c5495045be25f5171e8b58";
  };
in
  import src
