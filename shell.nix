let
  nixpkgs = builtins.fetchTarball {
    # https://status.nixos.org/ -> nixos-22.11 on 2023-03-01
    url = "https://github.com/nixos/nixpkgs/archive/b26d52c9feb6476580016e78935cbf96eb3e2115.tar.gz";
  };
  pkgs = import nixpkgs {};
  poetry2nix = import (fetchTarball {
    # https://github.com/nix-community/poetry2nix/commits/master on 2023-03-02
    url = "https://github.com/nix-community/poetry2nix/archive/45babaf3f04aa1d53fa90e7ab9404360f7621919.tar.gz";
  }) {
    pkgs = pkgs;
  };

  env = poetry2nix.mkPoetryEnv {
    python = pkgs.python311;
    pyproject = ./pyproject.toml;
    poetrylock = ./poetry.lock;
    overrides = pkgs.poetry2nix.defaultPoetryOverrides.extend (self: super: {
      datamodel-code-generator = super.datamodel-code-generator.overridePythonAttrs (
        old: {
          buildInputs = (old.buildInputs or [ ]) ++ [ self.poetry ];
        }
      );
      genson = super.genson.overridePythonAttrs (
        old: {
          buildInputs = (old.buildInputs or [ ]) ++ [ self.setuptools ];
        }
      );
      pathspec = super.pathspec.overridePythonAttrs (
        old: {
          buildInputs = (old.buildInputs or [ ]) ++ [ self.flit-core ];
        }
      );
    });

  };
in

pkgs.mkShell {
  name = "dev-shell";
  buildInputs = [
    env
    pkgs.poetry
  ];

}
