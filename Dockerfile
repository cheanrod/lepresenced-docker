FROM debian:buster-20200224-slim

RUN apt-get update && apt-get install -y \
    blueman \
    bluetooth \
    bluez \
    bluez-hcidump \
    curl \
    libnet-server-perl \
    libusb-1.0-0-dev \
    perl \
    tzdata \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt
RUN  curl --insecure -O https://svn.fhem.de/fhem/trunk/fhem/contrib/PRESENCE/lepresenced \
    && chmod +x lepresenced && chgrp dialout lepresenced

EXPOSE 5333

CMD ["/opt/lepresenced", "--bluetoothdevice", "hci0", "--listenaddress", "0.0.0.0", \
    "--listenport", "5333", "--loglevel", "LOG_WARNING", "--logtarget", "stdout"]
