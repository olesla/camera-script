# camera-script

Saves a picture using `raspistill` which requires a RPi compatible camera. [Read this](https://www.raspberrypi.org/documentation/usage/camera/installing.md) for instructions on how to physically install the camera. The file is then uploaded to a remote, then deleted locally.

## Installation

- Clone this repository, then change the `REMOTE_PATH`, `REMOTE_USER` and `REMOTE_IP` variables in `camera.sh`
- Make sure you've installed an SSH key on the `REMOTE_IP` machine. This can be done by running `ssh-copy-id your-username@your-ip`

- Make sure `raspistill` is installed
- Install `camera.sh` as a crontab on your RPi