FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

LABEL maintainer="2592509183@qq.com"
LABEL description="This is a Docker Image for Webots."

RUN apt update

RUN apt upgrade -y --no-install-recommends & apt install -y --no-install-recommends git curl sudo wget zip unzip make && apt install -y net-tools w3m usbutils nano gdb cmake ninja-build gcc g++ python3-pip && apt clean

RUN wget https://github.com/cyberbotics/webots/releases/download/R2023b/webots_2023b_amd64.deb -O ./webots.deb && apt install ./webots.deb -y --no-install-recommends && rm webots.deb

RUN bash -c "cd && git clone -b 4.10.0 --depth=1 https://github.com/opencv/opencv.git && cd opencv && mkdir build && cd build && cmake .. && make -j4 && make install && cd && rm -rf opencv"

COPY init.sh /init.sh

RUN chmod +x /init.sh

ENTRYPOINT ["/init.sh"]
