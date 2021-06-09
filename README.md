# Update: with NixOS 21.05 the problem presented below has been fixed

# Testing poetry2nix in nix-shell on Big Sur
A repo to test nix-shell &amp; poetry2nix on Big Sur


## How to run

```bash
$ nix-shell
```

It fails with `SystemExit: error: command 'clang' failed with exit status 1`

<details>
  <summary>Full log</summary>
  
```
Building wheels for collected packages: psutil
  Building wheel for psutil (setup.py) ... error
  ERROR: Command errored out with exit status 1:
   command: /nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/bin/python3.8 -u -c 'import sys, setuptools, tokenize; sys.argv[0] = '"'"'/private/tmp/nix-build-python3.8-psutil-5.8.0.drv-0/pip-req-build-troh8gvg/setup.py'"'"'; __file__='"'"'/private/tmp/nix-build-python3.8-psutil-5.8.0.drv-0/pip-req-build-troh8gvg/setup.py'"'"';f=getattr(tokenize, '"'"'open'"'"', open)(__file__);code=f.read().replace('"'"'\r\n'"'"', '"'"'\n'"'"');f.close();exec(compile(code, __file__, '"'"'exec'"'"'))' bdist_wheel -d /private/tmp/nix-build-python3.8-psutil-5.8.0.drv-0/pip-wheel-4wlrwel7
       cwd: /private/tmp/nix-build-python3.8-psutil-5.8.0.drv-0/pip-req-build-troh8gvg/
  Complete output (144 lines):
  running bdist_wheel
  running build
  running build_py
  creating build
  creating build/lib.macosx-10.6-x86_64-3.8
  creating build/lib.macosx-10.6-x86_64-3.8/psutil
  copying psutil/_pswindows.py -> build/lib.macosx-10.6-x86_64-3.8/psutil
  copying psutil/_common.py -> build/lib.macosx-10.6-x86_64-3.8/psutil
  copying psutil/__init__.py -> build/lib.macosx-10.6-x86_64-3.8/psutil
  copying psutil/_psosx.py -> build/lib.macosx-10.6-x86_64-3.8/psutil
  copying psutil/_psbsd.py -> build/lib.macosx-10.6-x86_64-3.8/psutil
  copying psutil/_psaix.py -> build/lib.macosx-10.6-x86_64-3.8/psutil
  copying psutil/_pslinux.py -> build/lib.macosx-10.6-x86_64-3.8/psutil
  copying psutil/_compat.py -> build/lib.macosx-10.6-x86_64-3.8/psutil
  copying psutil/_psposix.py -> build/lib.macosx-10.6-x86_64-3.8/psutil
  copying psutil/_pssunos.py -> build/lib.macosx-10.6-x86_64-3.8/psutil
  creating build/lib.macosx-10.6-x86_64-3.8/psutil/tests
  copying psutil/tests/test_contracts.py -> build/lib.macosx-10.6-x86_64-3.8/psutil/tests
  copying psutil/tests/test_connections.py -> build/lib.macosx-10.6-x86_64-3.8/psutil/tests
  copying psutil/tests/runner.py -> build/lib.macosx-10.6-x86_64-3.8/psutil/tests
  copying psutil/tests/test_unicode.py -> build/lib.macosx-10.6-x86_64-3.8/psutil/tests
  copying psutil/tests/test_misc.py -> build/lib.macosx-10.6-x86_64-3.8/psutil/tests
  copying psutil/tests/test_posix.py -> build/lib.macosx-10.6-x86_64-3.8/psutil/tests
  copying psutil/tests/test_linux.py -> build/lib.macosx-10.6-x86_64-3.8/psutil/tests
  copying psutil/tests/test_sunos.py -> build/lib.macosx-10.6-x86_64-3.8/psutil/tests
  copying psutil/tests/__init__.py -> build/lib.macosx-10.6-x86_64-3.8/psutil/tests
  copying psutil/tests/test_aix.py -> build/lib.macosx-10.6-x86_64-3.8/psutil/tests
  copying psutil/tests/test_process.py -> build/lib.macosx-10.6-x86_64-3.8/psutil/tests
  copying psutil/tests/test_bsd.py -> build/lib.macosx-10.6-x86_64-3.8/psutil/tests
  copying psutil/tests/test_system.py -> build/lib.macosx-10.6-x86_64-3.8/psutil/tests
  copying psutil/tests/test_osx.py -> build/lib.macosx-10.6-x86_64-3.8/psutil/tests
  copying psutil/tests/test_memleaks.py -> build/lib.macosx-10.6-x86_64-3.8/psutil/tests
  copying psutil/tests/test_windows.py -> build/lib.macosx-10.6-x86_64-3.8/psutil/tests
  copying psutil/tests/__main__.py -> build/lib.macosx-10.6-x86_64-3.8/psutil/tests
  copying psutil/tests/test_testutils.py -> build/lib.macosx-10.6-x86_64-3.8/psutil/tests
  running build_ext
  building 'psutil._psutil_osx' extension
  creating build/temp.macosx-10.6-x86_64-3.8
  creating build/temp.macosx-10.6-x86_64-3.8/psutil
  creating build/temp.macosx-10.6-x86_64-3.8/psutil/arch
  creating build/temp.macosx-10.6-x86_64-3.8/psutil/arch/osx
  clang -Wno-unused-result -Wsign-compare -Wunreachable-code -DNDEBUG -g -fwrapv -O3 -Wall -DPSUTIL_POSIX=1 -DPSUTIL_SIZEOF_PID_T=4 -DPSUTIL_VERSION=580 -DPSUTIL_OSX=1 -I/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/include/python3.8 -c psutil/_psutil_common.c -o build/temp.macosx-10.6-x86_64-3.8/psutil/_psutil_common.o
  clang-7: warning: argument unused during compilation: '-fno-strict-overflow' [-Wunused-command-line-argument]
  clang -Wno-unused-result -Wsign-compare -Wunreachable-code -DNDEBUG -g -fwrapv -O3 -Wall -DPSUTIL_POSIX=1 -DPSUTIL_SIZEOF_PID_T=4 -DPSUTIL_VERSION=580 -DPSUTIL_OSX=1 -I/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/include/python3.8 -c psutil/_psutil_posix.c -o build/temp.macosx-10.6-x86_64-3.8/psutil/_psutil_posix.o
  clang-7: warning: argument unused during compilation: '-fno-strict-overflow' [-Wunused-command-line-argument]
  clang -Wno-unused-result -Wsign-compare -Wunreachable-code -DNDEBUG -g -fwrapv -O3 -Wall -DPSUTIL_POSIX=1 -DPSUTIL_SIZEOF_PID_T=4 -DPSUTIL_VERSION=580 -DPSUTIL_OSX=1 -I/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/include/python3.8 -c psutil/_psutil_osx.c -o build/temp.macosx-10.6-x86_64-3.8/psutil/_psutil_osx.o
  clang-7: warning: argument unused during compilation: '-fno-strict-overflow' [-Wunused-command-line-argument]
  clang -Wno-unused-result -Wsign-compare -Wunreachable-code -DNDEBUG -g -fwrapv -O3 -Wall -DPSUTIL_POSIX=1 -DPSUTIL_SIZEOF_PID_T=4 -DPSUTIL_VERSION=580 -DPSUTIL_OSX=1 -I/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/include/python3.8 -c psutil/arch/osx/process_info.c -o build/temp.macosx-10.6-x86_64-3.8/psutil/arch/osx/process_info.o
  clang-7: warning: argument unused during compilation: '-fno-strict-overflow' [-Wunused-command-line-argument]
  clang -bundle -undefined dynamic_lookup -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-zlib-1.2.11/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-bzip2-1.0.6.0.1/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-expat-2.2.8/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-xz-5.2.5/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-libffi-3.3/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-gdbm-1.18.1/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-sqlite-3.33.0/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-readline-6.3p08/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-ncurses-6.2/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-openssl-1.1.1i/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-configd-osx-10.8.5/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-zlib-1.2.11/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-bzip2-1.0.6.0.1/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-expat-2.2.8/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-xz-5.2.5/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-libffi-3.3/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-gdbm-1.18.1/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-sqlite-3.33.0/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-readline-6.3p08/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-ncurses-6.2/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-openssl-1.1.1i/lib -L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-configd-osx-10.8.5/lib build/temp.macosx-10.6-x86_64-3.8/psutil/_psutil_common.o build/temp.macosx-10.6-x86_64-3.8/psutil/_psutil_posix.o build/temp.macosx-10.6-x86_64-3.8/psutil/_psutil_osx.o build/temp.macosx-10.6-x86_64-3.8/psutil/arch/osx/process_info.o -L/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/lib -o build/lib.macosx-10.6-x86_64-3.8/psutil/_psutil_osx.cpython-38-darwin.so -framework CoreFoundation -framework IOKit
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-zlib-1.2.11/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-bzip2-1.0.6.0.1/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-expat-2.2.8/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-xz-5.2.5/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-libffi-3.3/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-gdbm-1.18.1/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-sqlite-3.33.0/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-readline-6.3p08/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-ncurses-6.2/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-openssl-1.1.1i/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-configd-osx-10.8.5/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-zlib-1.2.11/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-bzip2-1.0.6.0.1/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-expat-2.2.8/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-xz-5.2.5/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-libffi-3.3/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-gdbm-1.18.1/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-sqlite-3.33.0/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-readline-6.3p08/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-ncurses-6.2/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-openssl-1.1.1i/lib'
  ld: warning: directory not found for option '-L/nix/store/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-configd-osx-10.8.5/lib'
  ld: framework not found IOKit
  clang-7: error: linker command failed with exit code 1 (use -v to see invocation)
  Traceback (most recent call last):
    File "/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/lib/python3.8/distutils/unixccompiler.py", line 200, in link
      self.spawn(linker + ld_args)
    File "/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/lib/python3.8/distutils/ccompiler.py", line 910, in spawn
      spawn(cmd, dry_run=self.dry_run)
    File "/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/lib/python3.8/distutils/spawn.py", line 36, in spawn
      _spawn_posix(cmd, search_path, dry_run=dry_run)
    File "/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/lib/python3.8/distutils/spawn.py", line 157, in _spawn_posix
      raise DistutilsExecError(
  distutils.errors.DistutilsExecError: command 'clang' failed with exit status 1
  
  During handling of the above exception, another exception occurred:
  
  Traceback (most recent call last):
    File "/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/lib/python3.8/distutils/core.py", line 148, in setup
      dist.run_commands()
    File "/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/lib/python3.8/distutils/dist.py", line 966, in run_commands
      self.run_command(cmd)
    File "/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/lib/python3.8/distutils/dist.py", line 985, in run_command
      cmd_obj.run()
    File "/nix/store/3l0spwkwjx21b9kw7r2948gffym7ag1f-python3.8-python3.8-wheel-0.34.2/lib/python3.8/site-packages/wheel/bdist_wheel.py", line 223, in run
      self.run_command('build')
    File "/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/lib/python3.8/distutils/cmd.py", line 313, in run_command
      self.distribution.run_command(command)
    File "/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/lib/python3.8/distutils/dist.py", line 985, in run_command
      cmd_obj.run()
    File "/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/lib/python3.8/distutils/command/build.py", line 135, in run
      self.run_command(cmd_name)
    File "/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/lib/python3.8/distutils/cmd.py", line 313, in run_command
      self.distribution.run_command(command)
    File "/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/lib/python3.8/distutils/dist.py", line 985, in run_command
      cmd_obj.run()
    File "/nix/store/mhi2zi3yk4ai70n3k86vkbqf5z15k5is-python3.8-setuptools-47.3.1/lib/python3.8/site-packages/setuptools/command/build_ext.py", line 87, in run
      _build_ext.run(self)
    File "/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/lib/python3.8/distutils/command/build_ext.py", line 340, in run
      self.build_extensions()
    File "/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/lib/python3.8/distutils/command/build_ext.py", line 449, in build_extensions
      self._build_extensions_serial()
    File "/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/lib/python3.8/distutils/command/build_ext.py", line 474, in _build_extensions_serial
      self.build_extension(ext)
    File "/nix/store/mhi2zi3yk4ai70n3k86vkbqf5z15k5is-python3.8-setuptools-47.3.1/lib/python3.8/site-packages/setuptools/command/build_ext.py", line 208, in build_extension
      _build_ext.build_extension(self, ext)
    File "/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/lib/python3.8/distutils/command/build_ext.py", line 550, in build_extension
      self.compiler.link_shared_object(
    File "/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/lib/python3.8/distutils/ccompiler.py", line 713, in link_shared_object
      self.link(CCompiler.SHARED_OBJECT, objects,
    File "/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/lib/python3.8/distutils/unixccompiler.py", line 202, in link
      raise LinkError(msg)
  distutils.errors.LinkError: command 'clang' failed with exit status 1
  
  During handling of the above exception, another exception occurred:
  
  Traceback (most recent call last):
    File "/private/tmp/nix-build-python3.8-psutil-5.8.0.drv-0/pip-req-build-troh8gvg/setup.py", line 411, in main
      setup(**kwargs)
    File "/nix/store/mhi2zi3yk4ai70n3k86vkbqf5z15k5is-python3.8-setuptools-47.3.1/lib/python3.8/site-packages/setuptools/__init__.py", line 161, in setup
      return distutils.core.setup(**attrs)
    File "/nix/store/b3mgl5x2233qddyh3rfdss7ngzwa8bgq-python3-3.8.5/lib/python3.8/distutils/core.py", line 163, in setup
      raise SystemExit("error: " + str(msg))
  SystemExit: error: command 'clang' failed with exit status 1
  
  During handling of the above exception, another exception occurred:
  
  Traceback (most recent call last):
    File "<string>", line 1, in <module>
    File "/private/tmp/nix-build-python3.8-psutil-5.8.0.drv-0/pip-req-build-troh8gvg/setup.py", line 436, in <module>
      main()
    File "/private/tmp/nix-build-python3.8-psutil-5.8.0.drv-0/pip-req-build-troh8gvg/setup.py", line 422, in main
      print(hilite("XCode (https://developer.apple.com/xcode/) "
  TypeError: 'color' is an invalid keyword argument for print()
  ----------------------------------------
  ERROR: Failed building wheel for psutil
  Running setup.py clean for psutil
Failed to build psutil
ERROR: Failed to build one or more wheels


```

</details>

