# asd2

ARF Software Distribution Version 2

Fuckass protest about everything distro

## Supported hardware

 - x86

## Software

 - [X] skeleton [fs](https://git.2f30.org/fs/files.html)
 - [X] shell [mksh](http://www.mirbsd.org/mksh.htm)\*
 - [X] libc [musl libc](https://musl.libc.org/)\*
 - [X] init [sinit](https://core.suckless.org/sinit/)
 - [X] dev manager (replaces udevd) [smdev](https://git.suckless.org/smdev/)
 - [ ] netlink dev manager (missing piece of smdev) [nldev](https://r-36.net/scm/nldev/)
 - [ ] netdev monitor (nldev little brother) [nlmon](https://r-36.net/scm/nlmon/)
 - [ ] service manager [svc](https://r-36.net/scm/svc/)
 - [X] coreutils [sbase](https://git.suckless.org/sbase/)
 - [X] coreutils [ubase](https://git.suckless.org/ubase/)
 - [ ] coreutils [hbase](https://git.2f30.org/hbase/)
 - [ ] awk [one true awk](https://github.com/onetrueawk/awk)
 - [X] pager [less](https://www.greenwoodsoftware.com/less/)\*
 - [ ] manpage reader [man-db](https://man-db.gitlab.io/man-db/)
 - [X] network manager [iproute2](https://wiki.linuxfoundation.org/networking/iproute2)\*
 - [ ] dhcp client [sdhcp](http://git.2f30.org/sdhcp/)
 - [X] fs tools [f2fs-tools](https://www.kernel.org/doc/html/latest/filesystems/f2fs.html)\*
 - [ ] compiler [gcc](https://gcc.gnu.org/)
 - [X] editor [vim](https://www.vim.org/)
 - [ ] display server [xlibre](https://x11libre.net/)
 - [ ] window manager [dwm](https://dwm.suckless.org/)
 - [ ] launcher [dmenu](https://tools.suckless.org/dmenu/)
 - [ ] lock screen [slock](https://tools.suckless.org/slock/)
 - [ ] status line [slstatus](https://tools.suckless.org/slstatus/)
 - [ ] X terminal emulator [st](https://st.suckless.org/)
 - [ ] web browser [surf](https://surf.suckless.org/)
 - [ ] tabber [tabbed](https://tools.suckless.org/tabbed/)


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
qemu-system-x86_64 -M pc -kernel output/images/bzImage -drive file=output/images/rootfs.ext2,if=virtio,format=raw -append "rootwait root=/dev/vda console=tty1 console=ttyS0" -serial stdio -net nic,model=virtio -net user
```

