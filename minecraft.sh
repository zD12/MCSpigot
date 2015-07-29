#!/bin/bash -x

#
# zd12/MCSpigot
#
# Installs and compiles latest SpigotMC version for Minecraft servers
#
# @package Latest Spigot version
# @author zD12
#

(

##Install dependency 
yum -y install wget #This program is used for downloading the latest BuildTools update
yum -y install git #This program is used for downloading a GitRepo for the EULA and Run.sh
yum -y install java-1.7.0-openjdk #This program is used to compile and run Spigot
yum -y install screen #This program will allow applications to run in the background
yum -y update #Updating isn't necessary, however, highly encouraged
##Begin 'pre-install' processes || Changeable.
cd ..  #Have in 'c:/spigot/' or '.../spigot/'? | Comment (hashtag it) if not wanted at 'c:/spigot/'
mkdir buildtools #Create new folder for compiling Spigot
cd buildtools #Access 'buildtools' | The new folder used for compiling
##Begin purging outdated information
rm -rf "BuildTools.jar" #Delete outdated version of buildtools jar-file (if possible)
rm -rf work #Delete dependencies of outdated buildtools (if possible)
rm -rf BuildData #Delete dependencies of outdated buildtools (if possible)
rm -rf Bukkit #Delete dependencies of outdated buildtools (if possible)
rm -rf CraftBukkit #Delete dependencies of outdated buildtools (if possible)
rm -rf Spigot #Delete dependencies of outdated buildtools (if possible)
##Begin actual install processes
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar #Download latest successful build of BuildTools (spigot)
java -jar BuildTools.jar #Execute BuildTools (spigot compiling software) #Visit http://www.spigotmc.org/wiki/buildtools/ for more information
##Begin Minecraft setup 
cd ..  #Have in 'c:/mcserver/' or '.../spigot/mcserver/'?
mkdir mcserver #Create new folder for Minecraft setup
cd mcserver #Access 'mcserver' | The new folder used for setup
mv -v -f /buildtools/spigot.jar /mcserver #Move Spigot into mcserver's folder
##Download and configure setup files
cd /buildtools #Travel to buildtools
rm -rf MCSpigot
git clone git://github.com/zD12/MCSpigot.git #Clone repository for files
mv -v -f /buildtools/MCSpigot/eula.txt /mcserver #Accepting the EULA, no turning back.
#It's highly recommended for you to adjust the amount of RAM your server is allocated.
mv -v -f /buildtools/MCSpigot/run.sh /mcserver #Move Minecraft startup script into mcserver's folder
chmod 777 run.sh #Give premissions for this to be executable
## Display some information, again.
echo -e '\E[37;44m'"\033[1m No warranty implied, we're dearly sorry if anything failed. \033[0m"
echo -e '\E[37;44m'"\033[1m Minecraft Server installed at: ../mcserver/run.sh \033[0m"
echo -e '\E[37;44m'"\033[1m Installation Log: /var/log/spigot-install.log \033[0m"

) 2>&1 | tee /var/log/spigot-install.log
