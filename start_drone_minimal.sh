#!/bin/bash
mkdir ~/data
docker compose -f docker/docker-compose.yaml up --build -d
tmuxp load ./config_tmux/minimal.yaml
