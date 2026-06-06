################################################################################
#
# sinit
#
################################################################################

SINIT_VERSION = v1.1
SINIT_SITE = git://git.suckless.org/sinit
SINIT_INSTALL_TARGET = YES
SINIT_PROVIDES = init

define SINIT_BUILD_CMDS
    VERSION=$(SINIT_VERSION) $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define SINIT_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/sinit $(TARGET_DIR)/sbin/init
endef

$(eval $(generic-package))

