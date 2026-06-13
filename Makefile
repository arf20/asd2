MAKEFLAGS += --no-builtin-rules

buildroot-2026.02:
	wget https://buildroot.org/downloads/buildroot-2026.02.tar.xz
	tar xf buildroot-2026.02.tar.xz
	patch -u buildroot-2026.02/Makefile -i enable_doc.patch

all:
	$(MAKE) -C buildroot-2026.02 BR2_EXTERNAL=external-asd2 asd2-pc-x86_64_bios_defconfig
	$(MAKE) -C buildroot-2026.02

