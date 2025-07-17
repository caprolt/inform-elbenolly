FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    cmake

WORKDIR /app

RUN git clone -b r7.2 https://github.com/ganelson/inweb.git
RUN cd inweb && bash scripts/first.sh linux

RUN git clone https://github.com/ganelson/intest.git
RUN cd intest && ../inweb/Tangled/inweb -prototype intest.mkscript -makefile makefile && make

COPY . .

RUN sed -i 's|inweb/Materials/platforms|Materials/platforms|' scripts/first.sh
RUN cmake .
RUN make
