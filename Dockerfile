FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt install -y wget unzip python3 && \
    wget https://github.com/rustdesk/rustdesk-server/releases/download/1.1.12/rustdesk-server-linux-amd64.zip && \
    unzip ./rustdesk-server-linux-amd64.zip && \
    cd ./amd64 && \
    chmod +x ./hbbr    

EXPOSE 21117

ENTRYPOINT ["/bin/bash", "-c", "curl ip.sb && python3 -m http.server 21117 --bind 0.0.0.0 & ./amd64/hbbr"]
