FROM python:3.10-slim

RUN apt-get update && \
    apt-get install -y \
        apt-transport-https \
        build-essential \
        cmake \
        curl \
        gcc \
        g++ \
        git \
        tree \
        sudo \
        unzip \
        wget \
    && apt-get autoremove -yqq --purge \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

