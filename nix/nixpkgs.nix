let
  src = builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/7790dbe6a27d6bea22ecc62bf21841ccb427ec3b.tar.gz";
    sha256 = "0qi9xssp2084amqp7pi0zwxvmygv74v9ywqd11fc9m86019wb8x4";
  };
in
  import src
