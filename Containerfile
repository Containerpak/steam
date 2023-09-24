FROM ghcr.io/containerpak/mesa:main
ARG DEBIAN_FRONTEND=noninteractive
RUN apt install -y wget lsof && \
  wget https://repo.steampowered.com/steam/archive/precise/steam_latest.deb && \
  dpkg -i steam_latest.deb || true && \
  apt install -f -y && \
  rm -f steam_latest.deb
