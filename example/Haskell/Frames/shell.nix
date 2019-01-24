let
  jupyterLibPath = ../../..;
  nixpkgsPath = jupyterLibPath + "/nix";
  pkgs = import nixpkgsPath {};
  jupyter = import jupyterLibPath { pkgs=pkgs; };

  ihaskellWithPackages = jupyter.kernels.iHaskellWith {
      name = "Frames";
      packages = p: with p; [
        foldl
        Frames
      ];
    };

  jupyterlabWithKernels =
    jupyter.jupyterlabWith {
      kernels = [ ihaskellWithPackages ];
      directory = jupyter.mkDirectoryWith {
        extensions = [
          "jupyterlab-ihaskell"
        ];
      };
    };
in
  jupyterlabWithKernels.env
