let
  nixpkgs = builtins.fetchTarball {
    # https://status.nixos.org/ -> nixos-22.05 on 2022-10-04
    url = "https://github.com/nixos/nixpkgs/archive/81a3237b64e67b66901c735654017e75f0c50943.tar.gz";
  };
  pkgs = import nixpkgs {};
  poetry2nix = import (fetchTarball {
    # https://github.com/nix-community/poetry2nix/commits/master on 2022-10-04
    url = "https://github.com/nix-community/poetry2nix/archive/c2ee667d2fd19f70a9ac256b81f2cfc248c4f04d.tar.gz";
  }) {
    pkgs = pkgs;
  };

  env = poetry2nix.mkPoetryEnv {
    pyproject = ./pyproject.toml;
    poetrylock = ./poetry.lock;
    editablePackageSources = {
      trivial = ./src;
    };
  };
in

pkgs.mkShell {
  name = "dev-shell";
  buildInputs = [
    env
    pkgs.poetry

    # pkgs.docker-compose
  ];

}
