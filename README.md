# Dockerized-Coreemu-Template
A template repository to start working with a dockerized version of Coreemu.
## Requirements:
- docker ([Official Installation Tutorial](https://docs.docker.com/engine/install/))
- docker-compose
- X11 forwarding capability:
  - Linux (Should come out of the box if using Xorg. Otherwise needs Xwayland running)
  - macOS ([tutorial](https://gist.github.com/sorny/969fe55d85c9b0035b0109a31cbcb088))
## Setup:
- `sh setup.sh` (This step may take a lot of time depending on your internet download speed)
## Run:
- `./core-gui`
## Volume
To access files from inside the emulator, put them inside the `volume` folder. This folder is mounted on the container at `/volume`.
To add other volumes, check out the [example](https://docs.docker.com/engine/storage/bind-mounts/#use-a-bind-mount-with-docker-compose).
## NOTES/WARNINGS/TROUBLESHOOTING:
- The first time setup may take some time to run. It's dependent on the download speed of the Docker image.
- You need to have the `DISPLAY` environment variable set.
- You may need to check the [coreemu postinstall guide](https://coreemu.github.io/core/install.html#resolving-docker-issues)
---
based on: [coreemu docker tutorial](https://coreemu.github.io/core/install.html#dockerfile-based-install)
