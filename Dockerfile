FROM        node:10-buster-slim

LABEL       author="harrydev" maintainer="freelance@harrydev.me"

RUN         apt update \
            && apt -y install ffmpeg iproute2 git ca-certificates dnsutils python3 build-essential \
            && useradd -m -d /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]
