# Mavproxy in a Docker-Container

This is a lightweight containerized [MAVProxy](https://ardupilot.org/mavproxy/index.html) for the use on a companien-pc (linux on raspberry or x86).

## Installation

```shell
cd ~
git clone https://github.com/ploeffler/Mavproxy
cd Mavproxy
sudo docker build -t mavproxy .
sudo docker run --device=/dev/serial0 --name mavproxy --network host -v $(pwd)/logs:/var/log/mavproxy -dt mavproxy --master=/dev/serial0 --master=tcpin:0.0.0.0:5760 --master=tcpin:127.0.0.1:5770
```

Adapt the serial settings as well as the master settings to your needs.
