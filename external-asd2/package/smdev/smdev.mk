################################################################################
#
# smdev
#
################################################################################

SMDEV_VERSION = 8d07540c417e3a31942028318197c89b640278d5
SMDEV_SITE = git://git.suckless.org/smdev
SMDEV_INSTALL_TARGET = YES

SMDEV_PREFIX = /usr

SMDEV_CPPFLAGS_MORE =\
	-D_FILE_OFFSET_BITS=64 \
	-D_XOPEN_SOURCE=700 \
	-D_GNU_SOURCE

SMDEV_CFLAGS_MORE =\
	-std=c99 -Wall -Wextra

SMDEV_LDFLAGS_MORE =\
	-s

define SMDEV_BUILD_CMDS
    VERSION=$(SMDEV_VERSION) $(MAKE) $(TARGET_CONFIGURE_OPTS) \
		CFLAGS="$(TARGET_CPPFLAGS) $(TARGET_CFLAGS) $(SMDEV_CPPFLAGS_MORE) $(SMDEV_CFLAGS_MORE)" \
		LDFLAGS="$(TARGET_LDFLAGS) $(SMDEV_LDFLAGS_MORE)" LD=$(TARGET_CC) -C $(@D) all
endef

define SMDEV_INSTALL_TARGET_CMDS
    VERSION=$(SMDEV_VERSION) $(MAKE) $(TARGET_CONFIGURE_OPTS) PREFIX=$(TARGET_DIR)$(SMDEV_PREFIX) -C $(@D) install
endef

$(eval $(generic-package))

