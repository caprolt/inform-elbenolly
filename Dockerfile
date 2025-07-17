FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    cmake

WORKDIR /app

RUN git clone -b r7.2 https://github.com/ganelson/inweb.git

RUN git clone -b r2.1 https://github.com/ganelson/intest.git

RUN git clone -b fix/docker-build-error https://github.com/caprolt/inform-elbenolly.git

COPY . .

RUN mkdir -p inform7/Tangled
RUN mkdir -p inbuild/Tangled
RUN chmod +x /app/inweb/scripts/first.sh
RUN bash -c "inweb/scripts/first.sh linux"
RUN chmod +x /app/intest/scripts/first.sh
RUN bash -c "intest/scripts/first.sh"
RUN chmod +x /app/inform-elbenolly/scripts/first.sh
RUN bash -c "inform-elbenolly/scripts/first.sh"
# RUN cmake .
# RUN make
