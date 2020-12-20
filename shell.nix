let
  nixpkgs = builtins.fetchTarball {
    # https://github.com/NixOS/nixpkgs/tree/nixos-20.09 on 2020-12-19
    url = "https://github.com/nixos/nixpkgs/archive/7d57790bc12edaa8cbb76c38b28b59535492864e.tar.gz";
    sha256 = "1pkms2l3fxhn4mpxmknkirbxzgvmhg5qz4mlgn12aqsn3mxf4ag4";
  };
  pkgs = import nixpkgs { config = { allowUnfree = true; }; };

  poetryOverrides = self: super: {
    psutil = super.psutil.overrideAttrs (old: {
      buildInputs = old.buildInputs or []
        ++ pkgs.lib.optional pkgs.stdenv.isDarwin pkgs.darwin.IOKit;
    });
  };

  commonPoetryArgs = {
    overrides = [
      pkgs.poetry2nix.defaultPoetryOverrides
      poetryOverrides
    ];
  };

  env = pkgs.poetry2nix.mkPoetryEnv ( commonPoetryArgs // {
    pyproject = ./pyproject.toml;
    poetrylock = ./poetry.lock;
  });
in

pkgs.mkShell {
  name = "dev-shell";
  buildInputs = [
    env
    pkgs.poetry
  ];

}
