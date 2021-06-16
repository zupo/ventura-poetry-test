let
  nixpkgs = builtins.fetchTarball {
    # https://github.com/NixOS/nixpkgs/tree/nixos-21.05 on 2021-06-09
    url = "https://github.com/nixos/nixpkgs/archive/5de44c15758465f8ddf84d541ba300b48e56eda4.tar.gz";
    sha256 = "sha256:05darjv3zc5lfqx9ck7by6p90xgbgs1ni6193pw5zvi7xp2qlg4x";
  };
  pkgs = import nixpkgs { config = { allowUnfree = true; }; };

  poetryOverrides = self: super: {
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
