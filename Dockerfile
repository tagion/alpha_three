FROM ubuntu:20.04

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install libssl1.1 -y

COPY bin /tgn/bin
RUN echo "export PATH=$PATH:/tgn/bin" > ~/.bashrc
RUN chmod +x /tgn/bin/*
