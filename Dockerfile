FROM ubuntu:disco

RUN apt-get update && \
    apt-get install -y \
	iproute2 \
	net-tools \
	libcurl4

WORKDIR /app

ADD bedrock-server-1.13.3.0.tgz /app

ENV LD_LIBRARY_PATH=.

EXPOSE 19132/udp

CMD ["./bedrock_server"]
