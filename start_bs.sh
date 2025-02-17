#!/bin/bash
mkdir ~/data
docker compose -f docker/docker-compose-bs.yaml up --build -d
tmuxp load ./config_tmux/bs.yaml
