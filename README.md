# Testing installing various Python packages with poetry2nix on Big Sur

Use this repo to create MREs (minimal reproducible example) to showcase installation problems of various Python packages with poetry2nix.

## How to use

```bash
# Install poetry
$ git checkout --branch myexample
$ nix-shell

# Either
$ poetry add <some_package>

# Or manually edit pyproject.toml and then run
$ poetry lock --no-update

# Re-build nix-shell
$ exit
$ nix-shell
```
