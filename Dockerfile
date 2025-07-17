FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    cmake

WORKDIR /app

RUN git clone https://github.com/ganelson/inweb.git
RUN cd inweb && make

RUN git clone https://github.com/ganelson/intest.git
RUN cd intest && make

COPY . .

RUN cmake .
RUN make
