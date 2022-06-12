# Copyright (C)  2022 Eliminater74
# This is free software, licensed under the Apache License, Version 2.0

include $(TOPDIR)/rules.mk

#PKG_NAME:=luci-theme-tango
LUCI_THEME_NAME = "tano"
LUCI_TITLE:=Tano theme (Mod)
LUCI_PKGARCH:=all
LUCI_DEPENDS:=nodejs-native
PKG_LICENSE:=Apache-2.0
PKG_VERSION:=1.0.0.0
PKG_RELEASE:=20220612

define Package/luci-theme-tango/postinst
#!/bin/sh
rm -rf /tmp/luci-indexcache
rm -rf /tmp/luci-modulecache/
exit 0
endef

define Package/$(PKG_NAME)/config
# shown in make menuconfig <Help>
help
	$(LUCI_TITLE)
	Version: $(PKG_VERSION)-$(PKG_RELEASE)
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature