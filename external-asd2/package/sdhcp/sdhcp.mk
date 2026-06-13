################################################################################
#
# sdhcp
#
################################################################################

SDHCP_VERSION = 0.1
SDHCP_SITE = $(call github,arf20,sdhcp,b9fdcb5bb90078977370684abee66ebe5d94ed1f)
SDHCP_INSTALL_TARGET = YES

SDHCP_PREFIX = /usr

SDHCP_CPPFLAGS_MORE =\
	-D_DEFAULT_SOURCE

SDHCP_CFLAGS_MORE =\
	-Wall -Wextra -pedantic -std=c99

SDHCP_LDFLAGS_MORE =\
	-s

define SDHCP_BUILD_CMDS
    VERSION=$(SDHCP_VERSION) $(MAKE) $(TARGET_CONFIGURE_OPTS) CFLAGS="$(TARGET_CPPFLAGS) $(SDHCP_CPPFLAGS_MORE) $(SDHCP_CFLAGS_MORE)" LDFLAGS="$(TARGET_LDFLAGS) $(SDHCP_LDFLAGS_MORE)" LD=$(TARGET_CC) -C $(@D) all
endef

define SDHCP_INSTALL_TARGET_CMDS
    VERSION=$(SDHCP_VERSION) $(MAKE) $(TARGET_CONFIGURE_OPTS) PREFIX=$(TARGET_DIR)$(SDHCP_PREFIX) -C $(@D) install
endef

$(eval $(generic-package))

