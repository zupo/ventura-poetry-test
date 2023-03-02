# Testing various features of poetry2nix on Monterey

Use this repo to create MREs (minimal reproducible example) to showcase various
features and problems with poetry2nix.


## Example: `datamodel-code-generator` crashes

```console
# Enter nix-shell
$ nix-shell
$ [nix-shell:~/ventura]$ datamodel-codegen --input foo --output bar
Assertion failed: (PyCFunction_Check(func)), function PyCFunction_GET_FLAGS, file /nix/store/28ay1fi5968xk2vhnxc3r9rq0x1iipnf-python3-3.11.1/include/python3.11/cpython/methodobject.h, line 59.
Abort trap: 6
```
