let
  nixpkgs = builtins.fetchTarball {
    # https://status.nixos.org/ -> nixpkgs-unstable on 2023-03-30
    url = "https://github.com/nixos/nixpkgs/archive/e608c90a1cf381dde6ac9e0f085337150f2af3e2.tar.gz";
  };
  pkgs = import nixpkgs {};
  poetry2nix = import (fetchTarball {
    # https://github.com/nix-community/poetry2nix/commits/master on 2023-03-30
    url = "https://github.com/nix-community/poetry2nix/archive/dc8c13ab88db829c1b71e6c794d1b295c8031408.tar.gz";
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
