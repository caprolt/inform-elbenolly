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

RUN mkdir -p inform7/Tangled
RUN mkdir -p inbuild/Tangled
RUN chmod +x /app/inweb/scripts/first.sh
RUN bash -c "cd /app/inweb && ./scripts/first.sh linux"
RUN chmod +x /app/intest/scripts/first.sh
RUN bash -c "cd /app/intest && ./scripts/first.sh"
RUN bash scripts/first.sh
RUN cmake .
RUN make
