################################################################################
#
# skeleton-init-sinit
#
################################################################################

# The skeleton can't depend on the toolchain, since all packages depends on the
# skeleton and the toolchain is a target package, as is skeleton.
# Hence, skeleton would depends on the toolchain and the toolchain would depend
# on skeleton.
SKELETON_INIT_SINIT_ADD_TOOLCHAIN_DEPENDENCY = NO
SKELETON_INIT_SINIT_ADD_SKELETON_DEPENDENCY = NO

SKELETON_INIT_SINIT_DEPENDENCIES = skeleton-init-common

SKELETON_INIT_SINIT_PROVIDES = skeleton

SKELETON_INIT_SINIT_INSTALL_STAGING = YES

define SKELETON_INIT_SINIT_INSTALL_TARGET_CMDS
	$(call SYSTEM_RSYNC,$(SKELETON_INIT_SINIT_PKGDIR)/skeleton/bin,$(TARGET_DIR)/bin)
	$(call SYSTEM_RSYNC,$(SKELETON_INIT_SINIT_PKGDIR)/skeleton/etc,$(TARGET_DIR)/etc)

	$(INSTALL) -d -m 0755 $(TARGET_DIR)/var
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/var/log
	ln -s /run $(TARGET_DIR)/var/run
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/usr/share
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/usr/share/man
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/usr/share/man/man1
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/usr/share/man/man2
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/usr/share/man/man3
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/usr/share/man/man4
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/usr/share/man/man5
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/usr/share/man/man6
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/usr/share/man/man7
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/usr/share/man/man8
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/usr/share/man/man9
endef

$(eval $(generic-package))

