let
  nixpkgs = builtins.fetchTarball {
    # https://status.nixos.org/ -> nixos-21.11 on 2022-01-19
    url = "https://github.com/nixos/nixpkgs/archive/610d4ea2750e064bf34b33fa38cb671edd893d3d.tar.gz";
  };
  pkgs = import nixpkgs {};
  poetry2nix = import (fetchTarball {
    # https://github.com/nix-community/poetry2nix/commits/master on 2022-01-19
    url = "https://github.com/nix-community/poetry2nix/archive/038ed56cc1222b8a6765389e0b7f11c18372da98.tar.gz";
  }) {
    pkgs = pkgs;
    poetry = pkgs.poetry;
  };

  poetryOverrides = self: super: {
  };

  commonPoetryArgs = {
    overrides = [
      poetry2nix.defaultPoetryOverrides
      poetryOverrides
    ];
  };

  env = poetry2nix.mkPoetryEnv ( commonPoetryArgs // {
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
