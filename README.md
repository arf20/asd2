# asd2

ARF Software Distribution Version 2

## Supported hardware

 - x86

## Software

 - skeleton [fs](https://git.2f30.org/fs/files.html)
 - shell [mksh](http://www.mirbsd.org/mksh.htm)
 - libc [musl libc](https://musl.libc.org/)
 - init [sinit](https://core.suckless.org/sinit/)
 - dev manager (replaces udevd) [smdev](https://git.suckless.org/smdev/)
 - netlink dev manager [nldev](https://r-36.net/scm/nldev/)
 - netdev monitor [nlmon](https://r-36.net/scm/nlmon/)
 - awk [one true awk](https://github.com/onetrueawk/awk)
 - service manager [svc](https://r-36.net/scm/svc/)
 - coreutils [sbase](https://git.suckless.org/sbase/)
 - coreutils [ubase](https://git.suckless.org/ubase/)
 - coreutils [hbase](https://git.2f30.org/hbase/)
 - dhcpc [sdhcp](http://git.2f30.org/sdhcp/)
 - display server [xlibre](https://x11libre.net/)
 - window manager [dwm](https://dwm.suckless.org/)
 - launcher [dmenu](https://tools.suckless.org/dmenu/)
 - lock screen [dmenu](https://tools.suckless.org/slock/)
 - status line [dmenu](https://tools.suckless.org/slstatus/)
 - X terminal emulator [st](https://st.suckless.org/)
 - web browser [surt](https://surf.suckless.org/)


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

