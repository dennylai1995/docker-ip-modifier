#!/bin/bash

TARGET_FILE="daemon.json"
DOCKER_FOLDER="/etc/docker"

if [ -f "$DOCKER_FOLDER/$TARGET_FILE" ]; then
    echo ">> $TARGET_FILE already exists! Print its content"
    echo "$(cat $DOCKER_FOLDER/$TARGET_FILE)"
    echo ">> [Exit]"
else
    echo ">> Copy [$TARGET_FILE] to [$DOCKER_FOLDER]..."
    sudo cp $TARGET_FILE "$DOCKER_FOLDER"
    echo ">> Restart docker service..."
    sudo systemctl restart docker
    echo ">> [Finish]"
fi
