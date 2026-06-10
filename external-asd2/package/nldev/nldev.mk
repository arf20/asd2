################################################################################
#
# nldev
#
################################################################################

NLDEV_VERSION = 662ba24641d02fd93e6a5e43041805ce2bee9328
NLDEV_SITE = git://r-36.net/nldev
NLDEV_INSTALL_TARGET = YES

NLDEV_PREFIX = /usr

NLDEV_CPPFLAGS_MORE =\
	-DPREFIX=\\\"$(NLDEV_PREFIX)\\\" \
	-D_GNU_SOURCE \
	-D_DEFAULT_SOURCE \
	-D_FILE_OFFSET_BITS=64

NLDEV_CFLAGS_MORE =\
	-pedantic -Wall -O0 -I.

NLDEV_LDFLAGS_MORE =\
	-s -lc

define NLDEV_BUILD_CMDS
    VERSION=$(NLDEV_VERSION) $(MAKE) $(TARGET_CONFIGURE_OPTS) CFLAGS="$(TARGET_CPPFLAGS) $(NLDEV_CPPFLAGS_MORE) $(NLDEV_CFLAGS_MORE)" LDFLAGS="$(TARGET_LDFLAGS) $(NLDEV_LDFLAGS_MORE)" -C $(@D) all
endef

define NLDEV_INSTALL_TARGET_CMDS
    VERSION=$(NLDEV_VERSION) $(MAKE) $(TARGET_CONFIGURE_OPTS) PREFIX=$(TARGET_DIR)$(NLDEV_PREFIX) -C $(@D) install
endef

$(eval $(generic-package))

