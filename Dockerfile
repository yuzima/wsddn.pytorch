FROM nvidia/cuda:12.2.0-devel-ubuntu20.04

WORKDIR /ws

COPY requirements.txt /ws/

ENV TZ=Pacific/Auckland \
    DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y apt-utils git vim libsm6 libxext6 libxrender-dev pkg-config python3 python3-dev python3-pip
RUN pip3 install -r requirements.txt
RUN echo 'alias python="python3"' >> ~/.bashrc
RUN echo 'alias pip="pip3"' >> ~/.bashrc
