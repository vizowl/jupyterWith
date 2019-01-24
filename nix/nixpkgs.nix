let
  src = builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/72eae722235bfba72f2d4bc29094209c9882fc5d.tar.gz";
    sha256 = "0qi9xssp2084amqp7pi0zwxvmygv74v9ywqd11fc9m86019wb8x4";
  };
in
  import src
