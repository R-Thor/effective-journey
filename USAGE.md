file: USAGE.md

# Usage Guide

This document explains how to use the container definitions stored in this repository. It covers how to build, run, and manage the containers that make up the development environment.

## Running Containers
Each service or component in this repository includes its own compose.yaml file. To start a container group, navigate into its directory and run:

podman compose up -d
or:
docker compose up -d

## Stopping Containers
To stop a running container group:

podman compose down
or:
docker compose down

## Rebuilding Containers
If you modify a Dockerfile or configuration and need to rebuild:

podman compose build
or:
docker compose build

## Directory Structure
Each subfolder in this repository represents a containerized component. Typical layout:

<component>/
    Dockerfile
    compose.yaml
    entrypoint.sh (optional)
    config/       (optional)

## Adding a New Container
1. Create a new folder at the root of this repository  
2. Add a Dockerfile  
3. Add a compose.yaml  
4. Add any scripts or configuration needed  
5. Start the service using the commands above  

## Notes
- This repository stores only container definitions and related configuration  
- Application code, data, and model files live elsewhere  
- Runtime container storage is handled by Podman or Docker, not this repo

