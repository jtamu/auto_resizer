FROM debian:stable-slim

WORKDIR /work
COPY ./work /work

RUN apt update && \
	apt upgrade && \
	apt install -y imagemagick inotify-tools

