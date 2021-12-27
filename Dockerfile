FROM ubuntu:20.04

RUN apt-get update
RUN apt-get -y install build-essential flex bison mono-devel libboost-dev libfreeimage-dev unzip

ADD https://github.com/lronaldo/cpctelera/archive/refs/heads/development.zip .
RUN unzip development.zip && rm development.zip
RUN cd cpctelera-development && ./setup.sh
ENV CPCT_PATH=/cpctelera-development/cpctelera
