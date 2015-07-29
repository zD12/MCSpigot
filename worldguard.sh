#!/bin/bash -x

#
# zd12/MCSpigot
#
# Installs and compiles latest SpigotMC version for Minecraft servers
#
# @package WorldGuard
# @author zD12
#

(
yum -y install wget #Install wget, if not already
cd /mcserver/plugins/ #Adjust to proper location, if used w/ default installer should be fine.
wget https://web.archive.org/web/20150729040319/http://addons-origin.cursecdn.com/files/880/435/worldedit-bukkit-6.1.jar #Dependency of WorldGuard
wget https://web.archive.org/web/20150729040019/http://addons.cursecdn.com/files/881/691/worldguard-6.1.jar #WorldGuard (core)
)
