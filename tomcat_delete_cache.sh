#!/bin/bash

echo "Stopping tomcat..."

cd /home/tomcat/bin

./shutdown.sh

sleep 2

echo "Deleting stored cache..."

cd /home/tomcat/work/Catalina/localhost

rm -rf *

sleep 2

echo "Starting tomcat..."

cd /home/tomcat/bin

./startup.sh

echo "Done!"
