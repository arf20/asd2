################################################################################
#
# sinit
#
################################################################################

SINIT_VERSION = 1.0
SINIT_SITE = git://git.suckless.org/sinit
SINIT_INSTALL_TARGET = YES
SINIT_PROVIDES = init

define LIBFOO_BUILD_CMDS
    VERSION=$(SINIT_VERSION) $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define LIBFOO_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/sinit-$(SINIT_VERSION) $(TARGET_DIR)/sbin/init
endef

