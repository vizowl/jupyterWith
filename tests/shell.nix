with (import ../. {});
let
  jupyter =
    jupyterlabWith {
      kernels = with kernels; [
        ( iHaskellWith {
            name = "haskell-sample";
            packages = p: with p; [ vector ];
        })

        ( iPythonWith {
            name = "python-sample";
            packages = p: with p; [ numpy ];
        })
      ];

    };
in
  jupyter.env
