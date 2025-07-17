FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    cmake

WORKDIR /app

RUN git clone https://github.com/ganelson/inweb.git
RUN cd inweb && cc -o inweb-c "Chapter 1/inweb.c" && ./inweb-c -prototype inweb.mkscript -makefile makefile && make

RUN git clone https://github.com/ganelson/intest.git
RUN cd intest && ../inweb/Tangled/inweb -prototype intest.mkscript -makefile makefile && make

COPY . .

RUN cmake .
RUN make
