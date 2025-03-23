FROM ubuntu:24.04

RUN apt-get update
RUN apt-get install -y git expect make gcc libncurses-dev pkg-config autoconf libusb-1.0-0-dev libssl-dev sudo

RUN git clone https://github.com/PDP-10/its.git

WORKDIR its
RUN make EMULATOR=klh10

ENTRYPOINT ["./start"]