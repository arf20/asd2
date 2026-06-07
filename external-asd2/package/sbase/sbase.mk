################################################################################
#
# sbase
#
################################################################################

SBASE_VERSION = c546c3a5724c81cee9a11d816a38ccdf17472129
SBASE_SITE = git://git.suckless.org/sbase
SBASE_INSTALL_TARGET = YES

SBASE_PREFIX = /usr

SBASE_CPPFLAGS_MORE =\
	-DPREFIX=\\\"$(SBASE_PREFIX)\\\" \
	-D_DEFAULT_SOURCE \
	-D_NETBSD_SOURCE \
	-D_BSD_SOURCE \
	-D_XOPEN_SOURCE=700 \
	-D_FILE_OFFSET_BITS=64

define SBASE_BUILD_CMDS
    VERSION=$(SBASE_VERSION) $(MAKE) $(TARGET_CONFIGURE_OPTS) CPPFLAGS="$(TARGET_CPPFLAGS) $(SBASE_CPPFLAGS_MORE)" -C $(@D) all
endef

define SBASE_INSTALL_TARGET_CMDS
    VERSION=$(SBASE_VERSION) $(MAKE) $(TARGET_CONFIGURE_OPTS) PREFIX=$(TARGET_DIR)$(SBASE_PREFIX) -C $(@D) install
endef

$(eval $(generic-package))

