FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y wget unzip && \
    wget https://github.com/rustdesk/rustdesk-server/releases/download/1.1.12/rustdesk-server-linux-amd64.zip && \
    /usr/bin/unzip rustdesk-server-linux-amd64.zip && \
    chmod +x hbbr

EXPOSE 21117

CMD ["./hbbr"]
