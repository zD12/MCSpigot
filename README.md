# MCSpigot

MCSpigot Installer for CentOS

# Installation

To get started with your Minecraft server, simply execute the following commands via ternimal (SSH):

	$ yum install -y git
	$ git clone git://github.com/zD12/MCSpigot.git
	$ cd MCSpigot && bash minecraft.sh

# Plugins

## [TFM Package](https://github.com/zD12/MCSpigot/commit/2360628fb273e98792b8a46c90ded10029ed115d)
	$ cd MCSpigot && bash tfm.sh
## [Essentials](https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/)
	$ cd MCSpigot && bash essentials.sh
## [WorldGuard](http://dev.bukkit.org/bukkit-plugins/worldguard/files/46-world-guard-6-1/) and [WorldEdit](http://dev.bukkit.org/bukkit-plugins/worldedit/files/61-world-edit-6-1-up-to-mc-1-8-7/)
	$ cd MCSpigot && bash worldguard.sh

Sugguests for plugins or mod-packs (such as 'TFM Package') may be posted [here](https://github.com/zD12/MCSpigot/issues/new). 

#Disclosure
This project isn't actively maintained and is solely for the purpose of proof of concept.  This isn't perfect, and I have no intentions on making it perfect.  However, you may modify and adapt (within limitations of GNU GENERAL PUBLIC LICENSE Version 2) to make it perfect.

Once again, this is only a PROOF OF CONCEPT and was NOT designed with security in mind.  This project is merely creating automation.  I didn't create any plugin- I didn't create Spigot.  If you enjoy Spigot, [donate to Spigot](https://www.spigotmc.org/wiki/donations/)
