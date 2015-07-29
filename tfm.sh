#!/bin/bash -x

#
# zd12/MCSpigot
#
# Installs and compiles latest SpigotMC version for Minecraft servers
#
# @package Essentials
# @author zD12
#

(
yum -y install wget #Install wget, if not already
cd /mcserver/plugins/ #Adjust to proper location, if used w/ default installer should be fine.
wget https://github.com/TotalFreedom/TotalFreedomMod/releases/download/v4.3/TotalFreedomMod.jar
wget https://github.com/TotalFreedom/TF-Essentials/releases/download/2.0-TF/Essentials-TF.jar
wget https://github.com/TotalFreedom/TF-Essentials/releases/download/2.0-TF/EssentialsSpawn.jar
wget https://github.com/TotalFreedom/BukkitTelnet/releases/download/v4.2/BukkitTelnet.jar
wget https://github.com/TotalFreedom/SkinsRestorer/releases/download/v1.0/SkinRestorer.jar
wget https://github.com/TotalFreedom/TF-WorldEdit/releases/download/6.1.0-TF/TF-WorldEdit.jar
wget https://web.archive.org/web/20150729043735/http://addons.cursecdn.com/files/886/944/CoreProtect_2.12.0.jar
mkdir TotalFreedomMod
wget https://raw.githubusercontent.com/zD12/MCSpigot/master/tfm-pack/tfm/config.yml #Disallow coreprotect commands from normal OPs
)
