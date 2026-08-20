FROM ghcr.io/containerpak/wine:main

LABEL org.opencontainers.image.source="https://github.com/Containerpak/steam"

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ca-certificates curl dbus-user-session file libnss3 lsof pciutils \
    pkexec pulseaudio-utils python3 python3-apt xdg-user-dirs \
    xterm xz-utils zenity && \
    cpak-clean-junk

COPY --chmod=0755 steam-cpak /usr/local/bin/steam-cpak
COPY steam-cpak.desktop /usr/share/applications/steam-cpak.desktop
