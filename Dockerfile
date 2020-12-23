FROM ubuntu:focal
MAINTAINER Nick Byrne <nick@digitalnative.net>

ENV BEDROCK_SERVER_VERSION=1.16.201.02

RUN apt-get update \
    && apt-get install -y \
         curl \
	 unzip \
	 iproute2 \
	 net-tools \
	 libcurl4

RUN curl -s -L -o /tmp/minecraft.zip "https://minecraft.azureedge.net/bin-linux/bedrock-server-${BEDROCK_SERVER_VERSION}.zip" \
    && mkdir /app \
    && unzip -q /tmp/minecraft.zip -d /app

WORKDIR /app

ENV LD_LIBRARY_PATH=.

EXPOSE 19132/udp

CMD ["./bedrock_server"]
