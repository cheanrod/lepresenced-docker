# lepresenced-docker

Docker image for lepresenced as part of FHEM.

Example of usage inside a docker-compose file:

````sh
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
