let
  nixpkgs = builtins.fetchTarball {
    # https://status.nixos.org/ -> nixos-21.05 on 2022-01-19
    url = "https://github.com/nixos/nixpkgs/archive/0fd9ee1aa36ce865ad273f4f07fdc093adeb5c00.tar.gz";
  };
  pkgs = import nixpkgs {};
  poetry2nix = import (fetchTarball {
    # https://github.com/nix-community/poetry2nix/commits/master on 2022-01-19
    url = "https://github.com/nix-community/poetry2nix/archive/038ed56cc1222b8a6765389e0b7f11c18372da98.tar.gz";
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

    pkgs.docker-compose
  ];

}
