#!/bin/bash

echo "Author:Syed Misbah Ahmed"
echo "Script Date: 7/11/2009"
echo "Starting PostGRES Installation" 



echo "Step 1: Updating and Upgrading system dependencies"
sudo apt-get update && sudo apt-get upgrade

#Install curl
sudo apt-get -y install curl

echo "Step 2: Installing PostGRES"
sudo apt-get -y install postgresql postgresql-contrib

#Add to startup list
update-rc.d postgresql enable

#Add keys from APT of postgres to local machine
#https://wiki.postgresql.org/wiki/Apt
curl -fsSL https://salsa.debian.org/postgresql/postgresql-common/raw/master/pgdg/apt.postgresql.org.sh

#Install pgadmin 4 
sudo apt-get update
sudo apt-get upgrade
sudo apt-get -y install postgresql-10 pgadmin4   
