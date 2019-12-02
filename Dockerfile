FROM ubuntu:disco

RUN apt-get update && \
    apt-get install -y \
	libcurl4

WORKDIR /app

ADD bedrock-server-1.13.3.0.tgz /app

ENV LD_LIBRARY_PATH=.

CMD ["./bedrock_server"]
