#!/bin/bash



echo "Extracting anchor-cms..."
cd /data/www-content
tar xzf /anchorcms.tgz
mv anchor-cms-0.9.2/* .
mv anchor-cms-0.9.2/.* .
rmdir anchor-cms-0.9.2



echo "Setting default config..."
chown -R root:www-data /data/www-content
chmod -R g+w /data/www-content
chmod 777 ./www-content/content 
chmod 777 ./www-content/anchor/config

echo "Creating empty database..."
echo "CREATE DATABASE IF NOT EXISTS anchor" | mysql

 echo "Please use your browser to set up  use database anchor,
