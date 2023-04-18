At present, with grpc version 1.45.0, grpc is installed using the universal darwin variant. This results in a runtime error associated with the system architecture, and this prevents kuan yong from using google document_ai library:

```
LoadError (dlopen(/nix/store/zgq8prvphfaihfrj7jgzzj2yv83hbwz6-ruby2.7.6-grpc-1.45.0-universal-darwin/lib/ruby/gems/2.7.0/gems/grpc-1.45.0-universal-darwin/src/ruby/lib/grpc/2.7/grpc_c.bundle, 0x0009): tried: '/nix/store/zgq8prvphfaihfrj7jgzzj2yv83hbwz6-ruby2.7.6-grpc-1.45.0-universal-darwin/lib/ruby/gems/2.7.0/gems/grpc-1.45.0-universal-darwin/src/ruby/lib/grpc/2.7/grpc_c.bundle' (mach-o file, but is an incompatible architecture (have 'x86_64', need 'arm64e')), '/usr/local/lib/grpc_c.bundle' (no such file), '/usr/lib/grpc_c.bundle' (no such file) - /nix/store/zgq8prvphfaihfrj7jgzzj2yv83hbwz6-ruby2.7.6-grpc-1.45.0-universal-darwin/lib/ruby/gems/2.7.0/gems/grpc-1.45.0-universal-darwin/src/ruby/lib/grpc/2.7/grpc_c.bundle)
```

Upgrading GRPC to the latest version is unsuccessful, because we encounter a build error:
```
m1@8c6790a0-6057-4003-a637-0f668c569b29 grpc-test % nix develop
warning: ignoring untrusted substituter 'https://nixpkgs-ruby.cachix.org', you are not a trusted user.
Run `man nix.conf` for more information on the `substituters` configuration option.
warning: ignoring untrusted substituter 'https://rails-env-esper-will.cachix.org', you are not a trusted user.
Run `man nix.conf` for more information on the `substituters` configuration option.
error: builder for '/nix/store/f300wvg2wldq55c9i6249dj3vv4q3mqc-ruby2.7.6-grpc-1.53.0.drv' failed with exit code 1;
       last 10 log lines:
       > _rb_eRuntimeError
       > _rb_eTypeError
       > dyld_stub_binder
       > strip: warning: changes being made to the file will invalidate the code signature in: /nix/store/c16nlvwsjrmzj65lxsy9pfyzjy6x0j63-ruby2.7.6-grpc-1.53.0/lib/ruby/gems/2.7.0/gems/grpc-1.53.0/src/ruby/ext/grpc/grpc_c.bundle
       > make: *** [Makefile:273: strip] Error 1
       >
       > make failed, exit code 2
       >
       > Gem files will remain installed in /nix/store/c16nlvwsjrmzj65lxsy9pfyzjy6x0j63-ruby2.7.6-grpc-1.53.0/lib/ruby/gems/2.7.0/gems/grpc-1.53.0 for inspection.
       > Results logged to /nix/store/c16nlvwsjrmzj65lxsy9pfyzjy6x0j63-ruby2.7.6-grpc-1.53.0/lib/ruby/gems/2.7.0/extensions/arm64-darwin-21/2.7.0/grpc-1.53.0/gem_make.out
       For full logs, run 'nix-store -l /nix/store/f300wvg2wldq55c9i6249dj3vv4q3mqc-ruby2.7.6-grpc-1.53.0.drv'.
error: 1 dependencies of derivation '/nix/store/jm6jrbpdgirdl04pab21ng6gv9g744w7-my-rails-app-ruby-env.drv' failed to build
error: 1 dependencies of derivation '/nix/store/8f4fv6zjx45f0gsgdalbg46yrqiwhksj-my-rails-app.drv' failed to build
error: 1 dependencies of derivation '/nix/store/yjh3ng5lbhql00rmwzw6qxzvc962vg5j-nix-shell-env.drv' failed to build
m1@8c6790a0-6057-4003-a637-0f668c569b29 grpc-test % nvim Gemfile
m1@8c6790a0-6057-4003-a637-0f668c569b29 grpc-test % bundle lock
/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/rubygems.rb:283:in `find_spec_for_exe': Could not find 'bundler' (2.4.10) required by your /Users/m1/grpc-test/Gemfile.lock. (Gem::GemNotFoundException)
To update to the latest version installed on your system, run `bundle update --bundler`.
To install the missing version, run `gem install bundler:2.4.10`
        from /System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/rubygems.rb:302:in `activate_bin_path'
        from /usr/bin/bundle:23:in `<main>'
```
