#!/bin/bash
cd /home/container
export INTERNAL_IP=`ip route get 1 | awk '{print $NF;exit}'`
echo "Starting Minecraft Server..."
SERVER_MEMORY=$(expr $SERVER_MEMORY - 1024)
echo "Server starting with ${SERVER_MEMORY}M"
eval "java -Xms128M -Xmx${SERVER_MEMORY}M -jar ${SERVER_JARFILE}"
