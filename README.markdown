# KISS Install

1. extract tarball
2. mount repos: repo, secret
3. kiss_hook.sh, profile.d/flags.sh, profile -> etc
4. (re)install `baselayout certs gawk expat libffi sqlite python linux-headers patch glibc zlib bzip2 lz4 xz zstd m4 flex bison binutils gcc`
5. add new flags
6. reinstall everything that has been installed so far
7. install `openssl kiss make`

# Backlog

- [TODO] Why no zopfli in pigz?
- [TODO] Zstandard as replacement for everything that it can be a replacement for.
- [NOTE] Flags should be in kiss_hook.sh instead of profile
- [TODO] Clear Linux* Patches for GCC
