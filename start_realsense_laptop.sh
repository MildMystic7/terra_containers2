#!/bin/bash
mkdir ~/data
docker compose -f docker/docker-compose-laptop.yaml up --build -d
tmuxp load ./config_tmux/realsense_laptop.yaml
