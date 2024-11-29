FROM debian:bullseye-slim

WORKDIR /app

RUN apt-get update && apt-get install -y wget unzip && \
    wget https://github.com/rustdesk/rustdesk-server/releases/download/1.1.12/rustdesk-server-linux-amd64.zip && \
    unzip rustdesk-server-linux-amd64.zip && \
    rm rustdesk-server-linux-amd64.zip && \

EXPOSE 21117

CMD ["./hbbr"]
