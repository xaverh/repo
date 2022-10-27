# KISS Install

1. extract tarball
2. mount repos: repo, secret
3. kiss_hook.sh, profile.d/flags.sh, profile -> etc
4. (re)install `baselayout certs gawk expat libffi sqlite python linux-headers patch glibc zlib bzip2 lz4 xz zstd m4 flex bison binutils gcc`
5. add new flags
6. rebuild everything that has been installed so far
7. install `openssl kiss make`
8. install `git`
9. install `s6 s6-rc s6-linux-init s6-linux-utils s6-portable-utils`
10. build `linux`

=======
4. (re)install
  - baselayout
  - certs
  - gawk
  - expat
  - libffi
  - sqlite
  - python
  - linux-headers
  - patch
  - glibc
  - zlib
  - bzip2
  - lz4
  - xz
  - zstd
  - m4
  
  
# Backlog

- [TODO] Why no zopfli in pigz?
- [TODO] Zstandard as replacement for everything that it can be a replacement for.
- [NOTE] Flags should be in kiss_hook.sh instead of profile
- [TODO] Clear Linux* Patches for GCC
- [IDEA] Build crucial packages in core (and maybe metal) statically against musl, cf. $/oasis, $/dilyn-corner/kiss-static
- [TODO] Set up automatic build of s6-rc database
