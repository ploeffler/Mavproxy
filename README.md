# Mavproxy in a Docker-Container

This is a lightweight containerized [MAVProxy](https://ardupilot.org/mavproxy/index.html).

## Installation

```shell
cd ~
git clone https://github.com/ploeffler/Mavproxy
sudo docker run
```

### Volumes

You can save logs and state of MAVProxy by adding the following volumes (easiest with [Portainer](https://www.portainer.io/)):

- <path_to_logs>:/var/log/mavproxy
- <path_to_MAVProxy state>:/mavproxy

### X11

Set `DISPLAY=host.docker.internal:0` and configure your host X11 to accept connections.
