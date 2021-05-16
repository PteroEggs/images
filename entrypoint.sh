#!/bin/bash
cd /home/container
export INTERNAL_IP=`ip route get 1 | awk '{print $NF;exit}'`
echo "Starting Minecraft Server..."
eval ${MODIFIED_STARTUP}
