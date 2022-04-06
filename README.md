# Testing various features of poetry2nix on Monterey

Use this repo to create MREs (minimal reproducible example) to showcase various
features and problems with poetry2nix.

## How to use

```bash
# Enter nix-shell
$ nix-shell

# Try to import `trivial` package
[nix-shell:~/work/monterey-poetry-test]$ python -m trivial
/nix/store/hpwbhg5pm8kxd93ar1dva1ixqhbz09n9-python3-3.9.6-env/bin/python3.9: No module named trivial

# Comment out docker-compose and try again
[nix-shell:~/work/monterey-poetry-test]$ exit
$ nano shell.nix # comment out docker-compose
[nix-shell:~/work/monterey-poetry-test]$ python -m trivial
Original
```
