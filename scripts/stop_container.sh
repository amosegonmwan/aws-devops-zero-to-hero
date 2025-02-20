#!/bin/bash
set -e

# Stop the running container (if any)
containerid=$(docker ps -q)  # Gets only container IDs

if [ -n "$containerid" ]; then
    docker rm -f $containerid
    echo "Stopped and removed container: $containerid"
else
    echo "No running containers found."
fi 
