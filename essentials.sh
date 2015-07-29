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
wget https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/Essentials/target/Essentials-2.x-SNAPSHOT.jar #Essentials (core)
wget https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/EssentialsChat/target/EssentialsChat-2.x-SNAPSHOT.jar #Essentials Chat
wget https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/EssentialsSpawn/target/EssentialsSpawn-2.x-SNAPSHOT.jar #Essentials Spawn
)
