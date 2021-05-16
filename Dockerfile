FROM        node:15-buster-slim

LABEL       author="harrydev" maintainer="freelance@harrydev.me"

RUN         apt update \
            && apt -y install ffmpeg iproute2 git sqlite3 python3 ca-certificates tzdata dnsutils build-essential \
            && useradd -m -d /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]
