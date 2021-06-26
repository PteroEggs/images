#!/bin/bash
cd /home/container
export INTERNAL_IP=`ip route get 1 | awk '{print $NF;exit}'`
echo "Starting Minecraft Server..."
eval "java -Xms128M -Xmx${SERVER_MEMORY-1024}M -jar ${SERVER_JARFILE}"
