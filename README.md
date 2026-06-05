# asd2

ARF Software Distribution Version 2

## Supported hardware

 - x86

## Software

 - musl libc
 - sinit

## Build

Using buildroot

```
wget <buildroot.tar.xz>
tar xf <buildroot.tar.xz>
cd buildroot*
make BR2_EXTERNAL=../external-asd2/ raspberrypi3_64_tripls_defconfig
make -j$(nproc)
```

## Emulate

```
```

