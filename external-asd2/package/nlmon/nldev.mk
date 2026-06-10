################################################################################
#
# nlmon
#
################################################################################

NLMON_VERSION = 5881cff90359800b1d01ebc0bf35f53f4a67815d
NLMON_SITE = git://r-36.net/nlmon
NLMON_INSTALL_TARGET = YES

NLMON_PREFIX = /usr

NLMON_CPPFLAGS_MORE =\
	-DVERSION=0.3

NLMON_CFLAGS_MORE =\
	-g -std=c99 -pedantic -Wall -O0 -I.

NLMON_LDFLAGS_MORE =\
	-s -lc

define NLMON_BUILD_CMDS
    VERSION=$(NLMON_VERSION) $(MAKE) $(TARGET_CONFIGURE_OPTS) CFLAGS="$(TARGET_CPPFLAGS) $(NLMON_CPPFLAGS_MORE) $(NLMON_CFLAGS_MORE)" LDFLAGS="$(TARGET_LDFLAGS) $(NLMON_LDFLAGS_MORE)" -C $(@D) all
endef

define NLMON_INSTALL_TARGET_CMDS
    VERSION=$(NLMON_VERSION) $(MAKE) $(TARGET_CONFIGURE_OPTS) PREFIX=$(TARGET_DIR)$(NLMON_PREFIX) -C $(@D) install
endef

$(eval $(generic-package))

