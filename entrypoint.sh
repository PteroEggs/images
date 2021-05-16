#!/bin/bash
cd /home/container
export INTERNAL_IP=`ip route get 1 | awk '{print $NF;exit}'`
echo "Starting Minecraft Server..."
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
eval ${MODIFIED_STARTUP}
