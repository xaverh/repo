#!/bin/sh

export LANG=C
export LC_CTYPE=C.UTF-8

# everything
export CFLAGS="-O3 -march=ivybridge -mtune=ivybridge -pipe -fno-plt -fstack-clash-protection -fcf-protection -mfpmath=both -fgraphite-identity -floop-nest-optimize -funroll-loops -fipa-pta -ftracer -malign-data=cacheline -Wl,--hash-style=gnu -fno-strict-aliasing"
# no graphite
export CFLAGS="-O3 -march=ivybridge -mtune=ivybridge -pipe -fno-plt -fstack-clash-protection -fcf-protection -mfpmath=both -funroll-loops -fipa-pta -ftracer -malign-data=cacheline -Wl,--hash-style=gnu -fno-strict-aliasing"
# everything
export CXXFLAGS="-O3 -march=ivybridge -mtune=ivybridge -pipe -fno-plt -fstack-clash-protection -fcf-protection -mfpmath=both -fgraphite-identity -floop-nest-optimize -funroll-loops -fipa-pta -ftracer -malign-data=cacheline -Wl,--hash-style=gnu -fno-strict-aliasing -Wp,-D_GLIBCXX_ASSERTIONS"
# no graphite
export CXXFLAGS="-O3 -march=ivybridge -mtune=ivybridge -pipe -fno-plt -fstack-clash-protection -fcf-protection -mfpmath=both -funroll-loops -fipa-pta -ftracer -malign-data=cacheline -Wl,--hash-style=gnu -fno-strict-aliasing -Wp,-D_GLIBCXX_ASSERTIONS"
export RUSTFLAGS="-C target_cpu=native -C opt-level=3 -g -Clink-args=-Wl,-z,relro,-z,now"
export MAKEFLAGS=-j4

export PF_INFO="ascii title os host kernel uptime pkgs memory shell editor wm de palette"

#export KISS_COMPRESS=zst

# export CFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -Wformat -Wformat-security -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -fno-semantic-interposition -ffat-lto-objects -fno-trapping-math -Wl,-sort-common -Wl,--enable-new-dtags -mtune=skylake -mrelax-cmpxchg-loop "
# export FFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -malign-data=abi -fno-semantic-interposition -ftree-vectorize -ftree-loop-vectorize -Wl,--enable-new-dtags "
# export FCFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -malign-data=abi -fno-semantic-interposition -ftree-vectorize -ftree-loop-vectorize -Wl,-sort-common -Wl,--enable-new-dtags "
# export CXXFLAGS="$CFLAGS -fvisibility-inlines-hidden -Wl,--enable-new-dtags "
# export THEANO_FLAGS='floatX=float32,openmp=true,gcc.cxxflags="-ftree-vectorize -mavx"'
