################################################################################
#
# svc
#
################################################################################

SVC_VERSION = 7c865a28dae67b9f0c749caeac158c14e3623502
SVC_SITE = git://r-36.net/svc
SVC_INSTALL_TARGET = YES

define SVC_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/bin/service $(TARGET_DIR)/bin
	$(INSTALL) -D -m 0755 $(@D)/bin/svc $(TARGET_DIR)/bin
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/bin/svc.d
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/bin/svc.d/run
	$(call SYSTEM_RSYNC,$(@D)/svc.d,$(TARGET_DIR)/bin/svc.d)
	$(INSTALL) -D -m 0755 $(SVC_PKGDIR)/rc.svc $(TARGET_DIR)/bin
endef

$(eval $(generic-package))

