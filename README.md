# lepresenced-docker

![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/cheanrod/lepresenced)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/cheanrod/lepresenced)
![GitHub](https://img.shields.io/github/license/cheanrod/lepresenced-docker)

Docker image for lepresenced as part of FHEM.

Example of usage inside a docker-compose file:

````yaml
version: '3.7'

services:

  lepresenced:
    image: cheanrod/lepresenced
    restart: always
    environment:
      - TZ=Europe/Berlin
    cap_add:
      - SYS_ADMIN
      - NET_ADMIN
    network_mode: "host"
````
