FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    cmake

WORKDIR /app

RUN git clone -b r7.2 https://github.com/ganelson/inweb.git
RUN bash inweb/scripts/first.sh linux

RUN git clone -b r2.1 https://github.com/ganelson/intest.git
RUN bash intest/scripts/first.sh

COPY . .

RUN sed -i 's|inweb/Materials/platforms|Materials/platforms|' scripts/first.sh
RUN mkdir -p inform7/Tangled
RUN mkdir -p inbuild/Tangled
RUN inweb/inweb -d -o inform7/Tangled/inform7.c inform7/Contents.w
RUN inweb/inweb -d -o inbuild/Tangled/inbuild.c inbuild/Contents.w
RUN cmake .
RUN make
