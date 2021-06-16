# Testing installing various Python packages with poetry2nix on Big Sur

Use this repo to create MREs (minimal reproducible example) to showcase installation problems of various Python packages with poetry2nix.

## How to use

```bash
$ git checkout --branch myexample
$ nix-shell
$ poetry add <some_package>
$ exit
$ nix-shell
```
