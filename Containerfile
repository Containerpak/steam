FROM ghcr.io/containerpak/mesa:main

RUN apt install -y \
  wget \
  pciutils \
  lsof \
  libc6 \
  mangohud && \
  wget https://repo.steampowered.com/steam/archive/precise/steam_latest.deb && \
  dpkg -i steam_latest.deb || true && \
  apt install -f -y && \
  rm -f steam_latest.deb && \
  apt remove -y wget && \
  /usr/bin/cpak-clean-junk
