#!/bin/bash
mkdir ~/data

CONTAINER_NAME="docker-realsense_ros2-1"

# Start container
if docker ps -a --format '{{.Names}}' | grep -wq "$CONTAINER_NAME"; then
  docker start docker-realsense_ros2-1
else
  docker compose -f docker/docker-compose-laptop-slam.yaml up --build -d
fi

tmuxp load ./config_tmux/offline_slam.yaml