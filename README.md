# lepresenced-docker
![Docker Pulls](https://img.shields.io/docker/pulls/cheanrod/lepresenced)
![GitHub](https://img.shields.io/github/license/cheanrod/lepresenced-docker)

Docker image for lepresenced as part of FHEM. Images are available on [Docker Hub](https://hub.docker.com/r/cheanrod/lepresenced).

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
