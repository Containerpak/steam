FROM ubuntu:26.04 AS source

ADD --checksum=sha256:765aba9a0ed339a50226ceb614fcc9879a991ba184098bc8de920efb12c714a4 \
    https://repo.steampowered.com/steam/pool/steam/s/steam/steam-launcher_1.0.0.87_amd64.deb \
    /tmp/steam.deb

FROM ghcr.io/containerpak/wine:main

RUN --mount=type=bind,from=source,source=/tmp/steam.deb,target=/run/steam.deb \
    apt update && \
    apt install -y --no-install-recommends /run/steam.deb lsof pciutils pulseaudio-utils && \
    cpak-clean-junk

RUN rm /usr/bin/steam

COPY --chmod=0755 steam-cpak /usr/bin/steam
