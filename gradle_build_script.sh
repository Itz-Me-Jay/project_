#!/bin/bash

#!/bin/bash

Setup and configuration of Gradle
# cd to home-directory
cd ~/
#download the gradle-zip package
wget -O ~/gradle-4.7-bin.zip https://services.gradle.org/distributions/gradle-4.7-bin.zip
#Install java and unzip package
sudo yum -y install unzip java-1.8.0-openjdk
#Create a directory for gradle and unzip the package
sudo mkdir /opt/gradle
sudo unzip -d /opt/gradle/ ~/gradle-4.7-bin.zip
#create gradle-script
sudo vi /etc/profile.d/gradle.sh
#Put this text into gradle.sh:
export PATH=$PATH:/opt/gradle/gradle-4.7/bin
#Then set permissions on gradle.sh:
sudo chmod 755 /etc/profile.d/gradle.sh
#Finally, after logging out of the server and logging back in:
gradle --version
#And the commands used to install and run the Gradle Wrapper:
cd ~/
mkdir my-project
cd my-project
gradle wrapper
./gradlew build