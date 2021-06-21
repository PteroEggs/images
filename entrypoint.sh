#!/bin/bash
cd /home/container
export INTERNAL_IP=`ip route get 1 | awk '{print $NF;exit}'`
echo "Starting Bedrock Server..."
eval "chmod +x bedrock_server; ./bedrock_server"
