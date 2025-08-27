#!/bin/bash
mkdir ~/data
if docker ps -a --format '{{.Names}}' | grep -wq "$CONTAINER_NAME"; then
  docker start docker-realsense_ros2-1
else
  docker compose -f docker/docker-compose-laptop.yaml up --build -d
fi
tmuxp load ./config_tmux/realsense_laptop.yaml