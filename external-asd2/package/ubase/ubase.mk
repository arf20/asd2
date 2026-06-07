################################################################################
#
# ubase
#
################################################################################

UBASE_VERSION = e8249b49ca3e02032dece5e0cdac3d236667a6d9
UBASE_SITE = git://git.suckless.org/ubase
UBASE_INSTALL_TARGET = YES

UBASE_PREFIX = /usr

UBASE_CPPFLAGS_MORE =\
	-D_FILE_OFFSET_BITS=64 \
	-D_XOPEN_SOURCE=700 \
	-D_GNU_SOURCE

UBASE_CFLAGS_MORE =\
	-std=c99 -Wall -Wextra

UBASE_LDLIBS_MORE =\
	-lcrypt

UBASE_LDFLAGS_MORE =\
	-s

define UBASE_BUILD_CMDS
    VERSION=$(UBASE_VERSION) $(MAKE) $(TARGET_CONFIGURE_OPTS) \
		CFLAGS="$(TARGET_CPPFLAGS) $(TARGET_CFLAGS) $(UBASE_CPPFLAGS_MORE) $(UBASE_CFLAGS_MORE)" \
		LDLIBS="$(TARGET_LDLIBS) $(UBASE_LDLIBS_MORE)" \
		LDFLAGS="$(TARGET_LDFLAGS) $(UBASE_LDFLAGS_MORE)" -C $(@D) all
endef

define UBASE_INSTALL_TARGET_CMDS
    VERSION=$(UBASE_VERSION) $(MAKE) $(TARGET_CONFIGURE_OPTS) PREFIX=$(TARGET_DIR)$(UBASE_PREFIX) -C $(@D) install
endef

$(eval $(generic-package))

