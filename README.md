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
Running `./core-gui` with no flags starts the GUI with default settings.

Run the launcher script with optional flags. Short flags can be combined (for example `-sv` is equivalent to `-s -v`). Long-form flags (with `--`) must be passed separately.

Usage:

- `./core-gui [FLAGS]`

Common flags:

- `-h`, `--help`       : Show help and exit.
- `-v`, `--verbose`    : Enable verbose logging/output.
- `-d`, `--down`       : Stop and remove the container(s) (equivalent to `docker-compose down`).
- `-s`, `--shell`      : Start the container (if needed) and open an interactive shell inside it.
- `-w`, `--wireshark`  : Launch or attach Wireshark for packet capture (requires Wireshark available on host/container).

Examples:

- `./core-gui`                    : Start the GUI with default settings.
- `./core-gui -v`                 : Start with verbose logging enabled.
- `./core-gui -s`                 : Start (if needed) and open a shell in the container.
- `./core-gui -sv`                : Verbose + open shell (short flags combined).
- `./core-gui --down`             : Stop and remove running containers.
- `./core-gui -ws`                : Start Wireshark and open a shell in the container.

Notes:

- You can combine multiple short flags after a single dash (e.g. `-svw`). Long flags must be separate (e.g. `--verbose --shell`).
- Make sure the `DISPLAY` environment variable is set and X11 forwarding is available if you want to run GUI applications.
## Volume
To access files from inside the emulator, put them inside the `volume` folder. This folder is mounted on the container at `/volume`.
To add other volumes, check out the [example](https://docs.docker.com/engine/storage/bind-mounts/#use-a-bind-mount-with-docker-compose).
## NOTES/WARNINGS/TROUBLESHOOTING:
- The first time setup may take some time to run. It's dependent on the download speed of the Docker image.
- You need to have the `DISPLAY` environment variable set.
- You may need to check the [coreemu postinstall guide](https://coreemu.github.io/core/install.html#resolving-docker-issues)
---
based on: [coreemu docker tutorial](https://coreemu.github.io/core/install.html#dockerfile-based-install)
